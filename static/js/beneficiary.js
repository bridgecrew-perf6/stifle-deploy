<script>


    function benficialDetails(myradio) {
      
      var x = document.getElementById("benficiary_form");
    if (x.style.display === "none") {
        if(myradio.value=="slef"){
        x.style.display = "block";}

      }

    else {
        x.style.display = "none";
      }
    }
</script>