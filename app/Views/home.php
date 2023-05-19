<?= $this->extend('main') ?>

<?= $this->section('content') ?>

<!-- page content -->
<div class="right_col" role="main">
  <!-- top tiles -->
  <!-- top tiles -->
  <div class="row">
    <div class="col-12">
      <div class="tile_count">
        <div class="row">
          <div class="col-md-2  tile_stats_count">
            <span class="count_top"><i class="fa fa-users"></i> Staff</span>
            <div class="count"><?= $qstaff ?></div>
          </div>
          <div class="col-md-2  tile_stats_count">
            <span class="count_top"><i class="fa fa-group"></i> Borrower</span>
            <div class="count"><?= $qborrower ?></div>
          </div>
          <div class="col-md-2  tile_stats_count">
            <span class="count_top"><i class="fa fa-book"></i> Book</span>
            <div class="count"><?= $qbook ?></div>
          </div>
          <div class="col-md-2  tile_stats_count">
            <span class="count_top"><i class="fa fa-pencil-square-o"></i> Publisher</span>
            <div class="count"><?= $qpublisher ?></div>
          </div>
          <div class="col-md-2  tile_stats_count">
            <span class="count_top"><i class="fa fa-list"></i> Category</span>
            <div class="count"><?= $qcategory ?></div>
          </div>
          <div class="col-md-2  tile_stats_count">
            <span class="count_top"><i class="fa fa-user"></i> Borrow</span>
            <div class="count"><?= $qborrow ?></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /top tiles -->
  <br />
  <hr>


</div>
<!-- /page content -->

<!-- /page content -->

<?= $this->endsection() ?>