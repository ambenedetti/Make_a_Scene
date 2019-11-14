const showModal = () => {
  console.log('dasds')
 $('#myModal').on('shown.bs.modal', function () {
   $('#myInput').trigger('focus')
 });
};

export { showModal }
