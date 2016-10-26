<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      
                <div class="col-sm-4">
            
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      
                <div class="col-sm-4">
            
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
 
            <?php if(isset($become_seller))
                { ?>
                <li><a href="<?php echo $become_seller; ?>"><?php echo $text_become_seller; ?></a></li>
            <?php } ?>
            
           

            

        </ul>
      </div>
      
                <div class="col-sm-3 hidden">
            
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      
                <div class="col-sm-4">
            
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          
                <li><a href="<?php echo $customer; ?>"><?php echo $text_customer; ?></a></li>
                <?php if(isset($seller))
                { ?>
                    <li><a href="<?php echo $seller; ?>"><?php echo $text_seller; ?></a></li>
                <?php } ?>
            
          

            


        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer>








</body></html>