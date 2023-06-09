<?= $this->extend('main') ?>

<?= $this->section('content') ?>

<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3><a href="<?= base_url('category-add') ?>" class="btn btn-round btn-success btn-sm"> <i class="fa fa-plus"></i></a>Daftar category</h3>
      </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 ">
        <div class="x_panel">
          <div class="x_content">
            <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
              <thead>
                <tr>
                  <th>
                    <center>Category</center>
                  </th>
                  <th>
                    <center>Tool</center>
                  </th>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($category as $item) : ?>
                  <tr>
                    <td><?= $item['category'] ?></td>
                    <td>
                      <center>
                        <a href="<?= base_url('category-edit/') . $item['id'] ?>" class="btn btn-round btn-info btn-sm"><i class="fa fa-pencil"></i></a>
                        <a href="<?= base_url('category-del/') . $item['id'] ?>" class="btn btn-round btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                      </center>
                    </td>
                  </tr>
                <?php endforeach ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- /page content -->

<?= $this->endsection() ?>