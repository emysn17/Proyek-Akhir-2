@extends('layouts.master')
@section('title', 'Orders')
@section('page', 'Orders')
@section('breadcrumb')
    <!--begin::Breadcrumb-->
    <ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 pt-1">
        <!--begin::Item-->
        <li class="breadcrumb-item text-muted">Orders</li>
        <!--end::Item-->
    </ul>
    <!--end::Breadcrumb-->
@endsection
@section('content')
    <!--begin::Content-->
    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <!--begin::Post-->
        <div class="post d-flex flex-column-fluid" id="kt_post">
            <!--begin::Container-->
            <div id="kt_content_container" class="container-xxl">
                <!--begin::Products-->
                <div class="card card-flush">
                    <!--begin::Card header-->
                    <div class="card-header align-items-center py-5 gap-2 gap-md-5">
                        <!--begin::Card title-->
                        <div class="card-title">
                            <!--begin::Search-->
                            <div class="d-flex align-items-center position-relative my-1">
                                <!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
                                <span class="svg-icon svg-icon-1 position-absolute ms-4">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2"
                                            rx="1" transform="rotate(45 17.0365 15.1223)" fill="currentColor" />
                                        <path
                                            d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z"
                                            fill="currentColor" />
                                    </svg>
                                </span>
                                <!--end::Svg Icon-->
                                <input type="text" data-kt-ecommerce-order-filter="search"
                                    class="form-control form-control-solid w-250px ps-14" placeholder="Search Order" />
                            </div>
                            <!--end::Search-->
                        </div>
                        <!--end::Card title-->
                        <!--begin::Card toolbar-->
                        {{-- <div class="card-toolbar flex-row-fluid justify-content-end gap-5">
                            <!--begin::Flatpickr-->
                            <div class="input-group w-250px">
                                <input class="form-control form-control-solid rounded rounded-end-0"
                                    placeholder="Pick date range" id="kt_ecommerce_sales_flatpickr" />
                                <button class="btn btn-icon btn-light" id="kt_ecommerce_sales_flatpickr_clear">
                                    <!--begin::Svg Icon | path: icons/duotune/arrows/arr088.svg-->
                                    <span class="svg-icon svg-icon-2">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <rect opacity="0.5" x="7.05025" y="15.5356" width="12" height="2"
                                                rx="1" transform="rotate(-45 7.05025 15.5356)"
                                                fill="currentColor" />
                                            <rect x="8.46447" y="7.05029" width="12" height="2" rx="1"
                                                transform="rotate(45 8.46447 7.05029)" fill="currentColor" />
                                        </svg>
                                    </span>
                                    <!--end::Svg Icon-->
                                </button>
                            </div>
                            <!--end::Flatpickr-->
                            <div class="w-100 mw-150px">
                                <!--begin::Select2-->
                                <select class="form-select form-select-solid" data-control="select2" data-hide-search="true"
                                    data-placeholder="Status" data-kt-ecommerce-order-filter="status">
                                    <option></option>
                                    <option value="all">All</option>
                                    <option value="Cancelled">Cancelled</option>
                                    <option value="Completed">Completed</option>
                                    <option value="Denied">Denied</option>
                                    <option value="Pending">Pending</option>
                                    <option value="Processing">Processing</option>
                                </select>
                                <!--end::Select2-->
                            </div>
                        </div> --}}
                        <!--end::Card toolbar-->
                    </div>
                    <!--end::Card header-->
                    <!--begin::Card body-->
                    <div class="card-body pt-0">
                        <!--begin::Table-->
                        <table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_ecommerce_order_table">
                            <!--begin::Table head-->
                            <thead>
                                <!--begin::Table row-->
                                <tr class="text-start text-gray-400 fw-bold fs-7 text-uppercase gs-0">
                                    <th class="w-10px pe-2">
                                        <div class="form-check form-check-sm form-check-custom form-check-solid me-3">
                                            <input class="form-check-input" type="checkbox" data-kt-check="true"
                                                data-kt-check-target="#kt_ecommerce_order_table .form-check-input"
                                                value="1" />
                                        </div>
                                    </th>
                                    <th class="min-w-175px">Customer Name</th>
                                    <th class="min-w-125px">Description</th>
                                    <th class="text-end min-w-70px">Status</th>
                                    <th class="text-end min-w-100px">Actions</th>
                                </tr>
                                <!--end::Table row-->
                            </thead>
                            <!--end::Table head-->
                            <!--begin::Table body-->
                            <tbody class="fw-semibold text-gray-600">
                                @foreach ($orders as $order)
                                    <!--begin::Table row-->
                                    <tr>
                                        <!--begin::Checkbox-->
                                        <!--end::Checkbox-->
                                        <!--begin::Order ID=-->
                                        <td>
                                            {{-- <a href="{{ route('orders.show', $order->id) }}"
                                                class="text-gray-800 text-hover-primary fw-bold" data-kt-ecommerce-lapangan-filter="order_id">{{ $order->id }}</a> --}}
                                                <div class="form-check form-check-sm form-check-custom form-check-solid">
                                                    <input class="form-check-input" type="checkbox" value={{ $order->id }}
                                                        data-kt-ecommerce-order-filter="order_id" />
                                                </div>
                                        </td>
                                        <!--end::Order ID=-->
                                        <!--begin::Customer=-->
                                        <td>
                                            <div class="ms-5">
                                                <!--begin::Title-->
                                                <a href="javascript:;"
                                                    class="text-gray-800 text-hover-primary fs-5 fw-bold" data-kt-ecommerce-order-filter="order_name">{{ $order->user->name }}</a>
                                                <!--end::Title-->
                                            </div>
                                        </td>
                                        <!--end::Customer=-->
                                        <!--begin::Description=-->
                                        <td>
                                            <div class="d-flex flex-column w-100 me-2">
                                                <!--begin::Description=-->
                                                <div class="d-flex flex-stack mb-2">
                                                    <span class="text-gray-400 me-2">Description:</span>
                                                    <span class="text-gray-600 fw-bold">{{ $order->buktipembayaran }}</span>
                                                </div>
                                                <!--end::Description=-->
                                                <!--begin::Date=-->
                                                <div class="d-flex flex-stack">
                                                    <span class="text-gray-400 me-2">Date:</span>
                                                    <span class="text-gray-600 fw-bold">{{ $order->created_at }}</span>
                                                </div>
                                                <!--end::Date=-->
                                            </div>
                                        </td>
                                        <!--begin::Status=-->
                                        <td class="text-end pe-0" data-order="Completed">
                                            <!--begin::Badges-->
                                            @php
                                                $badge = '';
                                                switch ($order->status) {
                                                    case 'Pending':
                                                        $badge = 'badge-light-warning';
                                                        break;
                                                    case 'Processing':
                                                        $badge = 'badge-light-primary';
                                                        break;
                                                    case 'Completed':
                                                        $badge = 'badge-light-success';
                                                        break;
                                                    case 'Cancelled':
                                                        $badge = 'badge-light-danger';
                                                        break;
                                                    case 'Denied':
                                                        $badge = 'badge-light-danger';
                                                        break;
                                                    default:
                                                        $badge = 'badge-light-warning';
                                                        break;
                                                }
                                            @endphp
                                            <div class="badge {{ $badge }}"
                                                data-kt-ecommerce-order-filter="order_status">
                                                {{ $order->status }}
                                            </div>

                                            <!--end::Badges-->
                                        </td>
                                        <!--end::Status=-->
                                        <!--begin::Total=-->
                                        <!--end::Total=-->
                                        <!--begin::Action=-->
                                        <td class="text-end">
                                            <a href="#" class="btn btn-sm btn-light btn-active-light-primary"
                                                data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">Actions
                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr072.svg-->
                                                <span class="svg-icon svg-icon-5 m-0">
                                                    <svg width="24" height="24" viewBox="0 0 24 24"
                                                        fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M11.4343 12.7344L7.25 8.55005C6.83579 8.13583 6.16421 8.13584 5.75 8.55005C5.33579 8.96426 5.33579 9.63583 5.75 10.05L11.2929 15.5929C11.6834 15.9835 12.3166 15.9835 12.7071 15.5929L18.25 10.05C18.6642 9.63584 18.6642 8.96426 18.25 8.55005C17.8358 8.13584 17.1642 8.13584 16.75 8.55005L12.5657 12.7344C12.2533 13.0468 11.7467 13.0468 11.4343 12.7344Z"
                                                            fill="currentColor" />
                                                    </svg>
                                                </span>
                                                <!--end::Svg Icon-->
                                            </a>
                                            <!--begin::Menu-->
                                            {{-- <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold fs-7 w-125px py-4"
                                                data-kt-menu="true">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="{{ route('orders.show', $order->id) }}"
                                                        class="menu-link px-3">View</a>
                                                </div> --}}
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                {{-- <div class="menu-item px-3">
                                                    <a href="javascript:;"class="menu-link px-3"
                                                        data-kt-ecommerce-order-filter="process">Process</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="javascript:;"class="menu-link px-3"
                                                    data-kt-ecommerce-order-filter="deny">Deny</a>
                                                </div> --}}
                                                <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold fs-7 w-125px py-4"
                                                data-kt-menu="true">
                                                        <div class="menu-item px-3">
                                                            <a href="{{ route('orders.show', $order->id) }}"
                                                                class="menu-link px-3">View</a>
                                                        </div>
                                                        <div class="menu-item px-3">
                                                            <a href="javascript:;" onclick="handle_confirm('Apakah Anda Yakin?','Yakin','Tidak','POST','{{route('orders.completed',$order->id)}}');" class="menu-link px-3">Completed</a>
                                                        </div>   
                                                        <div class="menu-item px-3">
                                                                <a href="javascript:;" onclick="handle_confirm('Apakah Anda Yakin?','Yakin','Tidak','POST','{{route('orders.process',$order->id)}}');" class="menu-link px-3">Processing</a>
                                                            </div>
                                                            <div class="menu-item px-3">
                                                                <a href="javascript:;" onclick="handle_confirm('Apakah Anda Yakin?','Yakin','Tidak','POST','{{route('orders.deny',$order->id)}}');" class="menu-link px-3">Denied</a>
                                                            </div>
                                                            {{-- <div class="menu-item px-3">
                                                                <a href="javascript:;" onclick="handle_delete('{{route('orders.destroy',$order->id)}}');;" class="menu-link px-3">Hapus Order</a>                                                         
                                                            </div> --}}
                                                            <div class="menu-item px-3">
                                                                <a href="javascript:;" data-kt-ecommerce-order-filter="delete_row" class="menu-link px-3">Hapus Order</a>                                                         
                                                            </div>
                                                </div>
                                                <!--end::Menu item-->

                                            </div>
                                            <!--end::Menu-->
                                        </td>
                                        <!--end::Action=-->
                                    </tr>
                                    <!--end::Table row-->
                                @endforeach
                            </tbody>
                            <!--end::Table body-->
                        </table>
                        <!--end::Table-->
                    </div>
                    <!--end::Card body-->
                </div>
                <!--end::Products-->
            </div>
            <!--end::Container-->
        </div>
        <!--end::Post-->
    </div>
    <!--end::Content-->
    @section('scripts')
    <script>
        "use strict";
        var KTAppEcommerceorder = function() {
            var t, e, n = () => {
                t.querySelectorAll('[data-kt-ecommerce-order-filter="delete_row"]').forEach((t => {
                    t.addEventListener("click", (function(t) {
                        t.preventDefault();
                        const n = t.target.closest("tr"),
                            o = n.querySelector(
                                '[data-kt-ecommerce-order-filter="order_name"]')
                            .innerText,
                            i = n.querySelector(
                                '[data-kt-ecommerce-order-filter="order_id"]');
                        Swal.fire({
                            text: "Are you sure you want to delete " + o + "?",
                            icon: "warning",
                            showCancelButton: !0,
                            buttonsStyling: !1,
                            confirmButtonText: "Yes, delete!",
                            cancelButtonText: "No, cancel",
                            customClass: {
                                confirmButton: "btn fw-bold btn-danger",
                                cancelButton: "btn fw-bold btn-active-light-primary"
                            }
                        }).then((function(t) {
                            if (t.value) {
                                var url =
                                    "{{ route('orders.destroy', ':id') }}";
                                url = url.replace(':id', i.value);
                                $.ajax({
                                    url: url,
                                    type: "DELETE",
                                    data: {
                                        _token: "{{ csrf_token() }}"
                                    },
                                    success: function(response) {
                                        Swal.fire({
                                            text: "You have deleted " +
                                                o + "!.",
                                            icon: "success",
                                            buttonsStyling:
                                                !1,
                                            confirmButtonText: "Ok, got it!",
                                            customClass: {
                                                confirmButton: "btn fw-bold btn-primary"
                                            }
                                        }).then((function() {
                                            e.row($(n))
                                                .remove()
                                                .draw()
                                        }))
                                    }
                                })
                            } else {
                                "cancel" === t.dismiss && Swal.fire({
                                    text: o + " was not deleted.",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Ok, got it!",
                                    customClass: {
                                        confirmButton: "btn fw-bold btn-primary"
                                    }
                                })
                            }
                        }))
                    }))
                }))
            };
            return {
                init: function() {
                    (t = document.querySelector("#kt_ecommerce_order_table")) && ((e = $(t).DataTable({
                            info: !1,
                            order: [],
                            pageLength: 10,
                            columnDefs: [{
                                    orderable: !1,
                                    targets: 0
                                },
                                {
                                    orderable: !1,
                                    targets: 1
                                },
                                {
                                    orderable: !1,
                                    targets: 2
                                }
                            ],
                        })).on("draw", (function() {
                            n()
                        })), document.querySelector('[data-kt-ecommerce-order-filter="search"]')
                        .addEventListener("keyup", (function(t) {
                            e.search(t.target.value).draw()
                        })), n())
                }
            }
        }();
        KTUtil.onDOMContentLoaded((function() {
            KTAppEcommerceorder.init()
        }));
    </script>
@endsection
@endsection