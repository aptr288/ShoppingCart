<!--Navagation-->
<?php
require_once 'config/connect.php';
?>
<div class="menu-wrap">
				<div id="mobnav-btn">Menu <i class="fa fa-bars"></i></div>
				<ul class="sf-menu">
					<li>
						<a href="http://localhost/ecomphp/welcome.php">Home</a>
					</li>
					<li>
						<a href="#">Shop</a>
						<div class="mobnav-subarrow"><i class="fa fa-plus"></i></div>
						<ul>
							<?php
							//we select all the categories from the table 
							$catsql = "SELECT * FROM category";
							$catres = mysqli_query($connection, $catsql);
							while($catr = mysqli_fetch_assoc($catres)){
						 ?>
						 <!--Here we display all the categories present and also implemented LINKs redirecting it with Catid so as the index.php will display all the products belonging to particular category-->
							<li><a href="index.php?id=<?php echo $catr['id']; ?>"><?php echo $catr['name']; ?></a></li>
						<?php } ?>
						</ul>
					</li>
<!--If there is no user session set then MY Account Details are hidden-->
					
					<li>
						<a href="#">Contact</a>
					</li>
				</ul>
					<div class="header-xtra">
					<!--Session values are retreived --></div>
					</div>
					<div class="s-search">
						<div class="ss-ico"><i class="fa fa-search"></i></div>
						<div class="search-block">
							<div class="ssc-inner">
								<form>
									<input type="text" placeholder="Type Search text here...">
									<button type="submit"><i class="fa fa-search"></i></button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>