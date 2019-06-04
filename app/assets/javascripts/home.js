$(document).ready(function() {
  $('#add-item').on('click', () => {
    $.ajax({
      url:'home/create',
      type:'POST',
      data: {
        authenticity_token : $('meta[name=csrf-token]').attr('content'),
        name : $('#input-name').val(),
        price : $('#input-price').val()
      }
    })
    .done((data) => {
      $('.modal').modal('hide')
      appendNewData(data);
    })
    .fail((data) => {
      console.log(data);
    })
  })

  $('.delete-btn').on('click', (event) => {
    if (!window.confirm("Are you sure?")) {
      return;
    }
    const id = $(event.target).attr('target-id');
    $.ajax({
      url : `home/destroy/${id}`,
      type : 'DELETE',
      data : {
        authenticity_token : $('meta[name=csrf-token]').attr('content')
      }
    })
    .done((result) => {
      destroyData(id);
    })
    .fail((data) => {
      console.log(data);
    })
  })

  appendNewData = (data) => {
    $('tbody').append(`
      <tr>
        <td class="px-2" target-id="${data.id}">${data.name}</td>
        <td class="px-2" target-id="${data.id}">${data.price}</td>
        <td class="px-2" target-id="${data.id}">${data.warehouse_name}</td>
      </tr>
    `)
  }

  destroyData = (id) => {
    $(`tr[target-id="${id}"]`).remove();
  }
});
