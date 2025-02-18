import { redirect } from '@sveltejs/kit';
import type { LayoutLoad } from './$types';

// coloca "iniciar sesion" como main page

export const load: LayoutLoad = ({ url }) => {
	const verificar = false; //true = desactiva la seguridad
	if (!verificar && !url.pathname.startsWith('/iniciar-sesion')) {
		redirect(302, '/iniciar-sesion');
	}
};
