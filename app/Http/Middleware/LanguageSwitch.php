<?php

namespace App\Http\Middleware;

use CoasterCms\Models\Language;
use PageBuilder;

class LanguageSwitch
{
    public function handle($r, $n)
    {
        if ($l = $r->input('lang')) {
            $pageId = PageBuilder::pageId();
            Language::set($l);
            return redirect(PageBuilder::pageUrl($pageId));
        }
        return $n($r);
    }
}
