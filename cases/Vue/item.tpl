<tbody class="offers-d__item">
    <tr class="offers-d__row _head">
        <td rowspan="2" class="offers-d__cell _price">
            <div class="offers-d__prices">
                <div class="offers-d__price-main-h">
                    <strong class="offers-d__price-main">{{item.price}}<span class="offers-d__rubl-icon">р.</span></strong>
                </div>
                <div class="offers-d__price-unit-h">
                    <span class="offers-d__price-unit">{{item.price_sqm}}<span class="offers-d__rubl-icon">р.</span>/м<sup>2</sup></span>
                </div>
                <div class="offer-avg-price">
                    <span class="offer-avg-price__title">Средняя цена</span>
                    <span class="offer-avg-price__price">{{item.price_avg}}</span>
                    <span class="offer-avg-price__rubl-icon">р.</span>
                </div>
            </div>
        </td>
        <td rowspan="2" class="offers-d__cell _media">
            <div class="offers-d__media-h">
                <div class="offers-d__photo-h">
                    <div>
                        <img alt="" class="offers-d__photo" src="http://static.ngs.ru/cache/realty/photo/c9858b08d70778dd2c92b3cd3f0411a0_155_124_c.jpg">
                        <span class="offers-d__photo-count">
                            <span class="offers-d__photo-count-text">{{item.photo.length}} фото</span>
                        </span>
                    </div>
                </div>
                <div class="offers-d__lifetime-h">
                    <span class="offers-d__lifetime">3 часа на N1</span>
                </div>
                <div class="offers-d__special-mark">Премиум</div>
            </div>
        </td>
        <td class="offers-d__cell _address">
            <div class="offers-d__address-h">
                <a href="/view/5413172/" class="offers-d__address-dynamic">{{item.address}}</a>
                <span class="offers-d__address-link-h">&nbsp;<button title="Открыть в новом окне" class="offers-d__address-link">Открыть в новом окне</button></span>
            </div>
            <div class="offers-d__meta-description">
                <div class="offers-d__district-h">
                    <span class="offers-d__district">{{item.district}}</span>
                </div>
                <div class="offers-d__show-on-map-h">
                    <span class="offers-d__show-on-map">
                        <span class="offers-d__show-on-map-text">Показать на карте</span>
                    </span>
                </div>
            </div>
        </td>
        <td class="offers-d__cell _area">
            <div>
                <div class="offers-d__area-h">
                    <span class="offers-d__area">{{item.area}} м<sup>2</sup></span>
                </div>
                <ul class="offers-d__about-object">
                    <li class="offers-d__about-object-item">
                        <span>балкон</span>
                    </li>
                </ul>
            </div>
        </td>
        <td class="offers-d__cell _floor">
            <div class="offers-d__floor-h">
                <span class="offers-d__floor">
                    <span>{{item.floor}} этаж</span>
                </span>
            </div>
            <ul class="offers-d__about-object">
                <li title="кирпич" class="offers-d__about-object-item">кирпич</li>
            </ul>
        </td>
        <td rowspan="2" class="offers-d__cell _actions">
            <ul class="offers-d__actions">
                <li class="offers-d__actions-item-h">
                    <span title="Скрыть из списка" class="offers-d__actions-item _discard"></span>
                </li>
            </ul>
        </td>
    </tr>
    <tr class="offers-d__row _addition">
        <td colspan="3" class="offers-d__cell _addition">
            <section class="offers-d__short-description">
                {{item.description}}
            </section>
        </td>
    </tr>
    <tr class="offers-d__row _comment">
        <td colspan="6" class="offers-d__cell _comment">
            <div class="offers-d__comment-h">

            </div>
        </td>
    </tr>
</tbody>
