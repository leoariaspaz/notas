# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

filtrar_por_categoria = ->
	$(".dropdown-menu li a").click (e) ->
		e.preventDefault()
		$(".btn-group .btn:first-child").text($(this).text())
		$.get $(this).attr("href"), (data) ->
			$("#listar-notas").html(data)
			#ocultar_detalle()
			if $("#notas-empty").is(":visible")
				$("#detalle").hide()
			else
				$("#detalle").show()
				cargar_detalle()

cargar_detalle = ->
	cargar = (lnk) ->
		return false unless lnk.attr("href")?
		$("#listar-notas td.bg-info").removeClass "bg-info"
		$.get lnk.attr("href"), (data) ->
			$("#detalle").html(data)
			lnk.closest("tr").children("td").addClass("bg-info")

	$("#listar-notas td.titulo").on "click", (e) ->
		#console.log "a.click"
		a = $(this).children("a:first-child");
		# e.preventDefault()
		# cargar $(this)
		cargar a

	$("#listar-notas td.titulo").on "click", "a", (e) ->
		#console.log "a.click"
		e.preventDefault()
		cargar $(this)		

	$("#listar-notas table td.titulo a").ready ->
		#console.log "a.ready"
		cargar $("#listar-notas table a:first-child").first()

ocultar_detalle = ->
	$("#notas-empty").ready ->
		#console.log "#notas-empty.ready"
		if $("#notas-empty").is(":visible")
			$("#detalle").hide()

ready = ->
	#console.log "ready"
	filtrar_por_categoria()
	cargar_detalle()
	ocultar_detalle()
	h = $(document).height() - $("#title").height() - $("#title").outerHeight() -
				$("#header").height() - $("#header").outerHeight()
	$('#content').height(h).split({orientation:'horizontal', limit:10, position:'40%'})

$(document).on("turbolinks:load", ready)