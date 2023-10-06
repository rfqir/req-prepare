<div id="cardContainer">
    <style>
        .fa-plus,
        .fa-minus {
            color: white;
            border: none;
        }

        .btn-icon {
            margin-right: 10px;
            /* Menambah jarak antara tombol */
        }
    </style>
    <div class="row mt-4">
        <div class="col-12">
            <div class="card mb-4">
                <form action="" method="POST" enctype="multipart/form-data">
                    <input type="file" name="excel" class="form-control">
                    <button type="submit" name="import" class="form-control bg-gradient-info mt-2">Import</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const addRowsBtn = document.getElementById("addRowsBtn");
        const rowContainer = document.getElementById("rowContainer");

        let rowCount = 0;

        addRowsBtn.addEventListener("click", function(event) {
            event.preventDefault();

            rowCount++;

            const newRow = `
                <tr>
                <td class="text-xs font-weight-bold text-center ">${rowCount}</td>
                                                                <td><input type="text" name="inv[]" class="form-control"></td>
                                                                <td><input type="text" name="sku[]" class="form-control" required>
                                                                </td>
                </tr>
            `;

            rowContainer.insertAdjacentHTML("beforeend", newRow);
        });
        dropRowsBtn.addEventListener("click", function(event) {
            event.preventDefault();

            if (rowCount > 0) {
                rowCount--;
                rowContainer.removeChild(rowContainer.lastElementChild);
            }
        });
    });
</script>

<?php
if(isset($_POST['import'])){
    $fileName = $_FILES['excel']['name'];
    $fileExtension = explode('.',$fileName);
    $fileExtension = strtolower(end($fileExtension));

    $newFileName = date('Y.m.d') . ' - ' . date('h.i.sa') . '.' . $fileExtension;

    $targetDirectory = "uploads/" . $newFileName;
    move_uploaded_file($_FILES["excel"]["tmp_name"], $targetDirectory);

    error_reporting(0);
    ini_set('display_errors', 0);

    require "excelReader/excel_reader2.php";
    require "excelReader/SpreadsheetReader.php";

    $reader = new SpreadsheetReader($targetDirectory);

    foreach($reader as $keyv => $row){
        $inv = $row[1];
        $tgl = $row[2];
        $nama = $row[8];
        $sku = $row[10];
        $jumlah = $row[13];
        $penerima = $row[29];
        $kurir = $row[34];
        $tipe = $row[35];
        $resi = $row[36];
        $kirim = $row[37];
        $wkirim = $row[38];

        mysqli_query($conn, "INSERT INTO shop_id(invoice,tanggal_bayar, nama_product,sku_toko,jumlah,penerima,kurir,tipe,resi,tanggal_pengiriman,waktu_pengiriman) values ('$inv','$tgl','$nama','$sku','$jumlah','$penerima','$kurir','$tipe','$resi','$kirim','$wkirim')");
    }
}
?>