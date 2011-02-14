/*************
 * Written by Erik Rasmussen (erikwordpresswidgets -at- gmail)
 * http://www.erik-rasmussen.com/blog/2007/04/08/wordpress-countdown-widget/
 **/
var Duration = Class.create();
Duration.prototype =
{
	units:
	{
		day: 'day',
		days: 'days',
		d: 'd',
		hour: 'hour',
		hours: 'hours',
		minute: 'minute',
		minutes: 'minutes',
		second: 'second',
		seconds: 'seconds'
	},

	initialize: function(milliseconds, abbreviated)
	{
		this.milliseconds = milliseconds;
		this.abbreviated = abbreviated;
	},

	toString: function()
	{
		var days = Math.floor(this.milliseconds / 86400000);
		var remainder = this.milliseconds - days * 86400000;
		var hours = Math.floor(remainder / 3600000);
		remainder -= hours * 3600000;
		var minutes = Math.floor(remainder / 60000);
		remainder -= minutes * 60000;
		var seconds = Math.floor(remainder / 1000);
		remainder -= seconds * 1000;
		var buffer = [];
		if (days > 0)
		{
			buffer.push(days);
			if (this.abbreviated)
				buffer.push(this.units.d);
			else
			{
				buffer.push(' ');
				buffer.push(days > 1 ? this.units.days : this.units.day);
			}
		}
		if (this.abbreviated)
		{
			if (buffer.length > 0)
				buffer.push(', ');
			if (hours < 10)
				buffer.push('0');
			buffer.push(hours);
			buffer.push(':');
			if (minutes < 10)
				buffer.push('0');
			buffer.push(minutes);
			if (seconds < 10)
				buffer.push('0');
			buffer.push(seconds);
		}
		else
		{
			var out = function(value, singularUnit, pluralUnit)
			{
				if (value > 0)
				{
					if (buffer.length > 0)
						buffer.push(', ');
					buffer.push(value);
					buffer.push(' ');
					if (value > 1)
						buffer.push(pluralUnit);
					else
						buffer.push(singularUnit);
				}
			}
			out(hours, this.units.hour, this.units.hours);
			out(minutes, this.units.minute, this.units.minutes);
			out(seconds, this.units.second, this.units.seconds);
		}
		return buffer.join('');
	}
}
Duration.countdown = function(element, date, abbreviated)
{
	element = $(element);
	var refresh = function()
	{
		var milliseconds = date - new Date();
		var duration = new Duration(Math.abs(milliseconds), abbreviated);
		element.innerHTML = duration.toString();
		window.setTimeout(refresh, 1000);
	}
	refresh();
}