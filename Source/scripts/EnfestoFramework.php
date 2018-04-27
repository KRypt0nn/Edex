<?php

/*
    Enfesto Framework
    Copyright © 2018  Podvirnyy Nikita (KRypt0n_)

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

    and

    Enfesto Studio Group license
    https://vk.com/topic-113350174_36400959

    -----------------------

    Contacts:

    Email: <suimin.tu.mu.ga.mi@gmail.com>
    VK:    vk.com/technomindlp
           vk.com/hphp_convertation
*/

class EnfestoFramework
{
    protected $form;

    function __construct ($form, $isInit = true)
    {
        $this->form = $form;
    
        if ($isInit)
            self::initForm ();

        //self::showForm ();
    }

    function timedEval ($timer1 = 1, $eval1 = "", $timer2 = 1000, $eval2 = "")
    {
        $timeoutName = "timer_".rand (1, 99999999).microtime (1);

        setTimeout ($timer2, "\$GLOBALS[$timeoutName]->enable = false;");
        setTimeout ($timer2, "unset (\$GLOBALS[$timeoutName]);");
        setTimeout ($timer2, $eval2);

        $GLOBALS[$timeoutName] = setTimer ($timer1, $eval1, true);
    }

    function closeForm ($timer1 = 10, $timer2 = 400)
    {
        $name           = sha1 (serialize ($this->form));
        $GLOBALS[$name] = $this->form;

        self::timedEval ($timer1, 'if ($GLOBALS["'.$name.'"]->alphaBlendValue > 0) $GLOBALS["'.$name.'"]->alphaBlendValue -= 25;', $timer2, 'app::close ();');
    }

    function hideForm ($type = 1, $timer1 = 10, $timer2 = 400)
    {
        if ($type == 1)
            c("hideForm")->enable = true;

        else app::hide ();
    }

    function showForm ()
    {
        $this->form->alphaBlendValue = 0;
        $this->form->show ();

        while ($this->form->alphaBlendValue < 250)
            $this->form->alphaBlendValue++;
    }

    private function initForm ()
    {
        $form = $this->form;

        $form->alphaBlend      = true;
        $form->alphaBlendValue = 0;

        $form->doubleBuffer = true;

        $form->screenSnap = true;
        $form->snapBuffer = 10;
    }
}

?>
