{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{def $metas = ezini('Settings', 'Metas', 'novaseo.ini')}
<div class="block novaseao-metas">
    <div class="">
        <ul>
            {foreach $metas as $key => $meta }
                <li>
                    <label>{$meta.label|wash}:</label>&nbsp;{if and(is_set($attribute.content.metas),is_set($attribute.content.metas[$key]))}{$attribute.content.metas[$key].content|wash}{/if}
                </li>
            {/foreach}
        </ul>
    </div>
</div>
