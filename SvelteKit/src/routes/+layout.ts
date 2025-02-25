import { redirect } from '@sveltejs/kit';
import { isSignedIn } from '$lib/surreal';
import type { LayoutLoad } from './$types';

// coloca "iniciar sesion" como main page

export const load: LayoutLoad = ({ url }) => {
	const verificar = isSignedIn; //true = desactiva la seguridad
	if (!verificar && !url.pathname.startsWith('/iniciar-sesion')) {
		redirect(302, '/iniciar-sesion');
	}
};
