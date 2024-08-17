--DeBlemish effect filter v2.1 by khaver
obs = obslua

SETTING_SIZE = 'Size'
SETTING_REPLACE = 'Replace'
SETTING_AMOUNT = 'Amount'
SETTING_SHOW = 'ShowMask'
SETTING_MCOLOR = 'MaskColor'
SETTING_MHUE = 'MaskHue'
SETTING_MSAT = 'MaskSat'
SETTING_MVAL = 'MaskVal'
SETTING_MBLUR = 'MaskBlur'
SETTING_MCLIP = 'MaskClip'
SETTING_MSEP = 'MaskSep'
SETTING_MGAMMA = 'MaskGamma'
SETTING_MWHITE = 'MaskWhite'
SETTING_MBLACK = 'MaskBlack'
SETTING_CROPL = 'CropLeft'
SETTING_CROPT = 'CropTop'
SETTING_CROPR = 'CropRight'
SETTING_CROPB = 'CropBottom'

TEXT_SIZE = 'De-blemish'
TEXT_REPLACE = 'Color replace'
TEXT_AMOUNT = 'De-blemish mix'
TEXT_SHOW = 'Show mask'
TEXT_MCOLOR = 'Mask color'
TEXT_MHUE = 'Hue'
TEXT_MSAT = 'Saturation'
TEXT_MVAL = 'Value'
TEXT_MBLUR = 'Mask soften'
TEXT_MCLIP = 'Mask clip'
TEXT_MSEP = 'Mask separation'
TEXT_MGAMMA = 'Mask linearity'
TEXT_MWHITE = 'White clip'
TEXT_MBLACK = 'Black crush'
TEXT_CROPL = 'Crop left'
TEXT_CROPT = 'Crop top'
TEXT_CROPR = 'Crop right'
TEXT_CROPB = 'Crop bottom'

source_info = {}
source_info.id = 'filter-deblemish'
source_info.type = obs.OBS_SOURCE_TYPE_FILTER
source_info.output_flags = obs.OBS_SOURCE_VIDEO

image = "data:image/png;base64,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"

-- Returns the description displayed in the Scripts window
function script_description()
  return [[<center><img width=160 height=90 src=']] .. image .. [['/><br>Filter adapted by khaver - v3.0</br><br/><hr/></center>
  <center><a href="https://github.com/fx-planet/lwks-fx-bundle/blob/master/Filters/DeBlemish.fx">Lightworks DeBlemish User Effect by jwrl</a><br/><hr/></center>]]
end

function script_load(settings)
  obs.obs_register_source(source_info)
end

function script_properties(settings)
    local p = obs.obs_properties_create()
	local pe = obs.obs_properties_add_text(p, "text", "", obs.OBS_TEXT_DEFAULT)
	obs.obs_property_set_visible(pe, false)
	return p

end

function set_render_size(filter)
    target = obs.obs_filter_get_target(filter.source)

    local width, height
    if target == nil then
        width = 0
        height = 0
    else
        width = obs.obs_source_get_base_width(target)
        height = obs.obs_source_get_base_height(target)
    end

    filter.width = width
    filter.height = height
end

source_info.get_name = function()
    return "DeBlemish"
end

source_info.create = function(settings, source)
    local filter = {}
    filter.source = source
	filter.MaskColor = obs.vec4()
	--filter.width = 1
	--filter.height = 1

	set_render_size(filter)

    obs.obs_enter_graphics()
    --local effect_path = script_path() .. 'filter-deblemish.cpp'
    --filter.effect = obs.gs_effect_create_from_file(effect_path, nil)
    filter.effect = obs.gs_effect_create(shader, nil, nil)

	if filter.effect ~= nil then
		filter.params = {}
        filter.params.Size = obs.gs_effect_get_param_by_name(filter.effect, 'Size')
        filter.params.Replace = obs.gs_effect_get_param_by_name(filter.effect, 'Replace')
        filter.params.Amount = obs.gs_effect_get_param_by_name(filter.effect, 'Amount')
        filter.params.ShowMask = obs.gs_effect_get_param_by_name(filter.effect, 'ShowMask')
        filter.params.MaskColor = obs.gs_effect_get_param_by_name(filter.effect, 'MaskColor')
        filter.params.MaskHue = obs.gs_effect_get_param_by_name(filter.effect, 'MaskHue')
        filter.params.MaskSat = obs.gs_effect_get_param_by_name(filter.effect, 'MaskSat')
        filter.params.MaskVal = obs.gs_effect_get_param_by_name(filter.effect, 'MaskVal')
        filter.params.MaskBlur = obs.gs_effect_get_param_by_name(filter.effect, 'MaskBlur')
        filter.params.MaskClip = obs.gs_effect_get_param_by_name(filter.effect, 'MaskClip')
        filter.params.MaskSep = obs.gs_effect_get_param_by_name(filter.effect, 'MaskSep')
        filter.params.MaskGamma = obs.gs_effect_get_param_by_name(filter.effect, 'MaskGamma')
        filter.params.MaskWhite = obs.gs_effect_get_param_by_name(filter.effect, 'MaskWhite')
        filter.params.MaskBlack = obs.gs_effect_get_param_by_name(filter.effect, 'MaskBlack')
        filter.params.CropLeft = obs.gs_effect_get_param_by_name(filter.effect, 'CropLeft')
        filter.params.CropTop = obs.gs_effect_get_param_by_name(filter.effect, 'CropTop')
        filter.params.CropRight = obs.gs_effect_get_param_by_name(filter.effect, 'CropRight')
        filter.params.CropBottom = obs.gs_effect_get_param_by_name(filter.effect, 'CropBottom')
        filter.params.width = obs.gs_effect_get_param_by_name(filter.effect, 'width')
        filter.params.height = obs.gs_effect_get_param_by_name(filter.effect, 'height')
		--filter.params.time = obs.gs_effect_get_param_by_name(filter.effect, 'time')
	end

    obs.obs_leave_graphics()
    if filter.effect == nil then
        source_info.destroy(filter)
        return nil
    end

    source_info.update(filter, settings)
    return filter
end

source_info.destroy = function(filter)
    if filter.effect ~= nil then
        obs.obs_enter_graphics()
        obs.gs_effect_destroy(filter.effect)
        obs.obs_leave_graphics()
    end
	filter = nil
end

source_info.get_width = function(filter)
    return filter.width
end

source_info.get_height = function(filter)
    return filter.height
end

source_info.get_properties = function(settings)
    props = obs.obs_properties_create()

    obs.obs_properties_add_float_slider(props, SETTING_SIZE, TEXT_SIZE, 0.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_REPLACE, TEXT_REPLACE, 0.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_AMOUNT, TEXT_AMOUNT, 0.0, 1.0, 0.001)
    obs.obs_properties_add_bool(props, SETTING_SHOW, TEXT_SHOW)
    obs.obs_properties_add_color_alpha(props, SETTING_MCOLOR, TEXT_MCOLOR)
    obs.obs_properties_add_bool(props, SETTING_MHUE, TEXT_MHUE)
    obs.obs_properties_add_bool(props, SETTING_MSAT, TEXT_MSAT)
    obs.obs_properties_add_bool(props, SETTING_MVAL, TEXT_MVAL)
    obs.obs_properties_add_float_slider(props, SETTING_MBLUR, TEXT_MBLUR, 0.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_MCLIP, TEXT_MCLIP, -1.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_MSEP, TEXT_MSEP, 0.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_MGAMMA, TEXT_MGAMMA, 0.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_MWHITE, TEXT_MWHITE, 0.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_MBLACK, TEXT_MBLACK, 0.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_CROPL, TEXT_CROPL, 0.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_CROPT, TEXT_CROPT, 0.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_CROPR, TEXT_CROPR, 0.0, 1.0, 0.001)
    obs.obs_properties_add_float_slider(props, SETTING_CROPB, TEXT_CROPB, 0.0, 1.0, 0.001)

    return props
end

source_info.get_defaults = function(settings)
    obs.obs_data_set_default_double(settings, SETTING_SIZE, 0.5)
    obs.obs_data_set_default_double(settings, SETTING_REPLACE, 0.0)
    obs.obs_data_set_default_double(settings, SETTING_AMOUNT, 0.5)
    obs.obs_data_set_default_bool(settings, SETTING_SHOW, false)
    obs.obs_data_set_default_int(settings, SETTING_MCOLOR, 0xFFACBEE8)
    obs.obs_data_set_default_bool(settings, SETTING_MHUE, true)
    obs.obs_data_set_default_bool(settings, SETTING_MSAT, true)
    obs.obs_data_set_default_bool(settings, SETTING_MVAL, true)
    obs.obs_data_set_default_double(settings, SETTING_MBLUR, 0.5)
    obs.obs_data_set_default_double(settings, SETTING_MCLIP, 0.0)
    obs.obs_data_set_default_double(settings, SETTING_MSEP, 0.5)
    obs.obs_data_set_default_double(settings, SETTING_MGAMMA, 0.5)
    obs.obs_data_set_default_double(settings, SETTING_MWHITE, 1.0)
    obs.obs_data_set_default_double(settings, SETTING_MBLACK, 0.0)
    obs.obs_data_set_default_double(settings, SETTING_CROPL, 0.0)
    obs.obs_data_set_default_double(settings, SETTING_CROPT, 1.0)
    obs.obs_data_set_default_double(settings, SETTING_CROPR, 1.0)
    obs.obs_data_set_default_double(settings, SETTING_CROPB, 0.0)
end

source_info.update = function(filter, settings)
	maskcolor = obs.obs_data_get_int(settings, SETTING_MCOLOR)
	obs.vec4_from_rgba(filter.MaskColor, maskcolor)
    filter.Size = obs.obs_data_get_double(settings, SETTING_SIZE)
    filter.Replace = obs.obs_data_get_double(settings, SETTING_REPLACE)
    filter.Amount = obs.obs_data_get_double(settings, SETTING_AMOUNT)
    filter.ShowMask = obs.obs_data_get_bool(settings, SETTING_SHOW)
    --filter.MaskColor = obs.obs_data_get_int(settings, SETTING_MCOLOR)
    filter.MaskHue = obs.obs_data_get_bool(settings, SETTING_MHUE)
    filter.MaskSat = obs.obs_data_get_bool(settings, SETTING_MSAT)
    filter.MaskVal = obs.obs_data_get_bool(settings, SETTING_MVAL)
    filter.MaskBlur = obs.obs_data_get_double(settings, SETTING_MBLUR)
    filter.MaskClip = obs.obs_data_get_double(settings, SETTING_MCLIP)
    filter.MaskSep = obs.obs_data_get_double(settings, SETTING_MSEP)
    filter.MaskGamma = obs.obs_data_get_double(settings, SETTING_MGAMMA)
    filter.MaskWhite = obs.obs_data_get_double(settings, SETTING_MWHITE)
    filter.MaskBlack = obs.obs_data_get_double(settings, SETTING_MBLACK)
    filter.CropLeft = obs.obs_data_get_double(settings, SETTING_CROPL)
    filter.CropTop = obs.obs_data_get_double(settings, SETTING_CROPT)
    filter.CropRight = obs.obs_data_get_double(settings, SETTING_CROPR)
    filter.CropBottom = obs.obs_data_get_double(settings, SETTING_CROPB)

	set_render_size(filter)

end

source_info.video_render = function(filter)

  if not obs.obs_source_process_filter_begin(filter.source, obs.GS_RGBA, obs.OBS_ALLOW_DIRECT_RENDERING) then return end

  --local parent = obs.obs_filter_get_parent(filter.source)
  --filter.width = obs.obs_source_get_base_width(parent)
  --filter.height = obs.obs_source_get_base_height(parent)
  --filter.time = os.clock()


    obs.gs_effect_set_float(filter.params.Size, filter.Size)
    obs.gs_effect_set_float(filter.params.Replace, filter.Replace)
    obs.gs_effect_set_float(filter.params.Amount, filter.Amount)
    obs.gs_effect_set_bool(filter.params.ShowMask, filter.ShowMask)
    obs.gs_effect_set_vec4(filter.params.MaskColor, filter.MaskColor)
    obs.gs_effect_set_bool(filter.params.MaskHue, filter.MaskHue)
    obs.gs_effect_set_bool(filter.params.MaskSat, filter.MaskSat)
    obs.gs_effect_set_bool(filter.params.MaskVal, filter.MaskVal)
    obs.gs_effect_set_float(filter.params.MaskBlur, filter.MaskBlur)
    obs.gs_effect_set_float(filter.params.MaskClip, filter.MaskClip)
    obs.gs_effect_set_float(filter.params.MaskSep, filter.MaskSep)
    obs.gs_effect_set_float(filter.params.MaskGamma, filter.MaskGamma)
    obs.gs_effect_set_float(filter.params.MaskWhite, filter.MaskWhite)
    obs.gs_effect_set_float(filter.params.MaskBlack, filter.MaskBlack)
    obs.gs_effect_set_float(filter.params.CropLeft, filter.CropLeft)
    obs.gs_effect_set_float(filter.params.CropTop, filter.CropTop)
    obs.gs_effect_set_float(filter.params.CropRight, filter.CropRight)
    obs.gs_effect_set_float(filter.params.CropBottom, filter.CropBottom)
	obs.gs_effect_set_int(filter.params.width, filter.width)
	obs.gs_effect_set_int(filter.params.height, filter.height)
    --obs.gs_effect_set_float(filter.params.time, filter.time)

	--obs.gs_blend_state_push();
	--obs.gs_blend_function(obs.GS_BLEND_ONE, obs.GS_BLEND_INVSRCALPHA);
    obs.obs_source_process_filter_end(filter.source, filter.effect, filter.width, filter.height)
	--obs.gs_blend_state_pop();
end

source_info.video_tick = function(filter, seconds)
    set_render_size(filter)
end

shader = [[
//DeBlemish effect filter v3.0 adapted by khaver

#define MIN_GAMMA 0.316227766
#define MAX_GAMMA 1.683772234

#define LEVELS    0.9
#define OFFSET    1.0 - LEVELS

#define LOOP      16
#define DIVIDE    65
#define ANGLE     0.19634954085
#define RADIUS    0.0015

uniform float4x4 ViewProj;
uniform texture2d image;

uniform bool ShowMask;
uniform bool MaskHue;
uniform bool MaskSat;
uniform bool MaskVal;
uniform float Size;
uniform float Replace;
uniform float Amount;
uniform float4 MaskColor;
uniform float MaskBlur;
uniform float MaskClip;
uniform float MaskSep;
uniform float MaskGamma;
uniform float MaskWhite;
uniform float MaskBlack;
uniform float CropLeft;
uniform float CropTop;
uniform float CropRight;
uniform float CropBottom;
uniform int width;
uniform int height;

sampler_state textureSampler {
    Filter    = Linear;
	AddressU  = Clamp;
	AddressV  = Clamp;
};

struct VertData {
    float4 pos : POSITION;
    float2 uv  : TEXCOORD0;
};

VertData VSDefault(VertData v_in)
{
    VertData vert_out;
    vert_out.pos = mul(float4(v_in.pos.xyz, 1.0), ViewProj);
    vert_out.uv  = v_in.uv;
    return vert_out;
}

float3 fn_hsv (float3 rgb)
{
   // This is a standard HSV converter, so it isn't commented except where it
   // differs from normal practice

   float val = max (rgb.r, max (rgb.g, rgb.b));
   float rng = val - min (rgb.r, min (rgb.g, rgb.b));
   float hue, sat = rng / val;

   if (sat == 0.0) { hue = 0.0; }
   else {
      if (rgb.r == val) {
         hue = (rgb.g - rgb.b) / rng;

         if (hue < 0.0) hue += 6.0;
      }
      else if (rgb.g == val) { hue = 2.0 + ((rgb.b - rgb.r) / rng); }
      else hue = 4.0 + ((rgb.r - rgb.g) / rng);

      // Normally we would have hue /= 6.0 here, but not doing that gives us
      // a steeper slope when we actually generate the key in the main code.
	  //hue /= 6.0;
   }

   return float3 (hue, sat, val);
}

float4 PassThrough(VertData v_in) : TARGET
{
   float2 uv = v_in.uv;
   float _OutputAspectRatio = float(width) / float(height);

   float4 retval = image.Sample(textureSampler, v_in.uv);

	float4 maskval = image.Sample(textureSampler, v_in.uv);

	if (MaskBlur > 0.0) {
		float ang = 0.0;
		float2 xy;

		float2 radi = float2 (1.0, _OutputAspectRatio) * MaskBlur * RADIUS;

		for (int i = 0; i < LOOP; i++) {
			sincos (ang, xy.x, xy.y);
			xy *= radi;
			maskval.rgb += image.Sample(textureSampler, uv + xy).rgb;
			maskval.rgb += image.Sample(textureSampler, uv - xy).rgb;
			xy += xy;
			xy += xy;
			maskval.rgb += image.Sample(textureSampler, uv + xy).rgb;
			maskval.rgb += image.Sample(textureSampler, uv - xy).rgb;
			ang += ANGLE;
		}

		maskval.rgb /= DIVIDE;
	}

   float cropT = 1.0 - CropTop;
   float cropB = 1.0 - CropBottom;

	float3 Fhsv = fn_hsv(maskval.rgb);
	float3 Chsv = fn_hsv(MaskColor.rgb);

	float cDiff = 1.0;

	if (MaskHue && MaskSat && MaskVal) cDiff = min (distance (Fhsv, Chsv) * 2.0, 1.0);
	if (MaskHue && MaskSat && !MaskVal) cDiff = min (distance (Fhsv.xy, Chsv.xy) * 2.0, 1.0);
	if (MaskHue && !MaskSat && MaskVal) cDiff = min (distance (Fhsv.xz, Chsv.xz) * 2.0, 1.0);
	if (MaskHue && !MaskSat && !MaskVal) cDiff = min (distance (Fhsv.x, Chsv.x) * 2.0, 1.0);
	if (!MaskHue && MaskSat && MaskVal) cDiff = min (distance (Fhsv.yz, Chsv.yz) * 2.0, 1.0);
	if (!MaskHue && MaskSat && !MaskVal) cDiff = min (distance (Fhsv.y, Chsv.y) * 2.0, 1.0);
	if (!MaskHue && !MaskSat && MaskVal) cDiff = min (distance (Fhsv.z, Chsv.z) * 2.0, 1.0);

	float mask = 1.0 - smoothstep (MaskClip, MaskClip + MaskSep, cDiff);
	float gamma = 1.0 / pow (MIN_GAMMA + (MAX_GAMMA * MaskGamma), 2.0);
	float black = saturate (MaskBlack) * LEVELS;

	mask = (pow (mask, gamma) - black) / (1.0 - black);
	retval.a = saturate (mask / ((MaskWhite * LEVELS) + OFFSET));

   if ((uv.x < CropLeft) || (uv.x > CropRight) || (uv.y < cropT) || (uv.y > cropB))
      retval = float4 (retval.rgb, 0.0);

	if (ShowMask) return float4(retval.a, retval.a, retval.a, 1.0);

	float4 Fgnd = image.Sample(textureSampler, uv);

	if (Size > 0.0) {

		float angle = 0.0;
		float2 xy;
		float2 radius = float2 (1.0, _OutputAspectRatio) * Size * RADIUS;
		radius *= retval.a;

		for (int i = 0; i < LOOP; i++) {
			sincos (angle, xy.x, xy.y);
			xy *= radius;
			retval.rgb += image.Sample(textureSampler, uv + xy).rgb;
			retval.rgb += image.Sample(textureSampler, uv - xy).rgb;
			xy += xy;
			xy += xy;
			retval.rgb += image.Sample(textureSampler, uv + xy).rgb;
			retval.rgb += image.Sample(textureSampler, uv - xy).rgb;
			angle += ANGLE;
		}
		retval.rgb /= DIVIDE;
	}

	if (Replace > 0.0) retval.rgb = lerp(retval.rgb, MaskColor.rgb, saturate(retval.a * Replace));
	if (Amount > 0.0) Fgnd.rgb = lerp (Fgnd.rgb, retval.rgb, Amount); //saturate(retval.a * Amount));

	return Fgnd;
}

technique Draw
{
    pass
    {
        vertex_shader = VSDefault(v_in);
        pixel_shader  = PassThrough(v_in);
    }
}
]]
