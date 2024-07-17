<?php
$pages = 'travel';
include 'template/header.php';
?>

<main id="main" class="main">
  <div class="pagetitle">
    <h1>Travel Report</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item">Events</li>
        <li class="breadcrumb-item active">Travel Report</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">
          <div class="card-body">

            <h5 class="card-title"></h5>

            <table class="table table-borderless datatable">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Prepared by</th>
                  <th scope="col">Unit</th>
                  <th scope="col">Date Conducted</th>
                  <th scope="col">Status</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row"><a href="#">#2457</a></th>
                  <td>Brandon Jacob</td>
                  <td><a href="#" class="text-primary">At praesentium minu</a></td>
                  <td>$64</td>
                  <td><span class="badge bg-success">Approved</span></td>
                  <td></td>
                </tr>
                <tr>
                  <th scope="row"><a href="#">#2147</a></th>
                  <td>Bridie Kessler</td>
                  <td><a href="#" class="text-primary">Blanditiis dolor omnis similique</a></td>
                  <td>$47</td>
                  <td><span class="badge bg-warning">Pending</span></td>
                  <td></td>
                </tr>
                <tr>
                  <th scope="row"><a href="#">#2049</a></th>
                  <td>Ashleigh Langosh</td>
                  <td><a href="#" class="text-primary">At recusandae consectetur</a></td>
                  <td>$147</td>
                  <td><span class="badge bg-success">Approved</span></td>
                  <td></td>
                </tr>
                <tr>
                  <th scope="row"><a href="#">#2644</a></th>
                  <td>Angus Grady</td>
                  <td><a href="#" class="text-primar">Ut voluptatem id earum et</a></td>
                  <td>$67</td>
                  <td><span class="badge bg-danger">Revision</span></td>
                  <td></td>
                </tr>
                <tr>
                  <th scope="row"><a href="#">#2644</a></th>
                  <td>Raheem Lehner</td>
                  <td><a href="#" class="text-primary">Sunt similique distinctio</a></td>
                  <td>$165</td>
                  <td><span class="badge bg-success">Approved</span></td>
                  <td></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>


    </div>
  </section>

</main><!-- End #main -->
<?php
include 'template/footer.php';
?>