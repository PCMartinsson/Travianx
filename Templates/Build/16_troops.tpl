			<?php
				$tribe = $session->tribe;
                  $start = ($tribe-1)*10+1;
                  $end = ($tribe*10);
                  echo "<tr><th>&nbsp;</th>";
                  for($i=$start;$i<=($end);$i++) {
                  	echo "<td><img src=\"img/x.gif\" class=\"unit u$i\" title=\"".$technology->getUnitName($i)."\" alt=\"".$technology->getUnitName($i)."\" /></td>";	
                  }
                  echo "<td><img src=\"img/x.gif\" class=\"unit uhero\" title=\"Hero\" alt=\"Hero\" /></td>";    
                  
			?>
			</tr><tr><th>Troops</th>
            <?php
            for($i=$start;$i<=$end;$i++) {
            	if($village->unitarray['u'.$i] == 0) {
                	echo "<td class=\"none\">";
                }
                else {
                echo "<td>";
                }
                echo $village->unitarray['u'.$i]."</td>";
            }
                            if($village->unitarray['hero'] == 0) {
                    echo "<td class=\"none\">";
                }
                else {
                echo "<td>";
                }
                echo $village->unitarray['hero']."</td>";
            ?>
           </tr></tbody>
            <tbody class="infos"><tr><th>Upkeep</th>
            <td colspan="10"><?php echo $technology->getUpkeep($village->unitarray,1); ?><img class="r4" src="img/x.gif" title="Crop" alt="Crop" />per hour</td></tr>