<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:admin>
    <jsp:body>
        <div class='max-w-sm mx-auto'>
            <div class='flex flex-col mt-10'>
                <div class='w-14 h-14 mx-auto'>
                    <img src="./imgs/icon.svg" alt="">
                </div>
                <div class='mt-5 text-center text-xl font-medium text-gray-700'>
                    Admin Login
                </div>
            </div>
            <div class='mt-5'>
                <form action="" method='POST'>
                    <div class='shadow-lg rounded-lg p-8 bg-white flex flex-col'>
                        <div>
                            <label for='email-address' class='font-medium text-gray-600'>Tài khoản</label>
                            <input id="email-address" name="email" type="text" autocomplete="email" required
                                   class='mt-2 w-full px-2 py-1 outline-none block border-2 rounded-md  border-gray-300 text-gray-700'>
                        </div>
                        <div class='mt-5'>
                            <label for='password' class='font-medium text-gray-600'>Mật khẩu</label>
                            <input id="password" name="password" type="password" autocomplete="current-password" required
                                   class='mt-2 w-full px-2 py-1 outline-none block border-2 rounded-md  border-gray-300'>
                        </div>
                        <div class='alert__login text-red-500 mt-3 hidden'>Mật khẩu hoặc tài khoản không đúng</div>
                        <div class='mt-8'>
                            <button type="submit"
                                    class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none">
                            <span class="absolute left-0 inset-y-0 flex items-center pl-3">
                                <!-- Heroicon name: solid/lock-closed -->
                                <svg class="h-5 w-5 text-indigo-500 group-hover:text-indigo-400"
                                     xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                                     aria-hidden="true">
                                    <path fill-rule="evenodd"
                                          d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z"
                                          clip-rule="evenodd" />
                                </svg>
                            </span>
                                Đăng nhập
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </jsp:body>
</t:admin>