classdef FourProgGUIExported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        FourSimpleProgramsGUILabel     matlab.ui.control.Label
        Style_Bar_Top                  matlab.ui.control.Label
        Style_Bar_Bottom               matlab.ui.control.Label
        SimplePascalTriangleButton     matlab.ui.control.Button
        FormattedPascalTriangleButton  matlab.ui.control.Button
        FibonacciNumbersButton         matlab.ui.control.Button
        Style_Bar1                     matlab.ui.control.Label
        Style_Bar2                     matlab.ui.control.Label
        FloydsTriangle                 matlab.ui.control.Button
        Style_Bar3                     matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: SimplePascalTriangleButton
        function SimplePascalTriangleButtonPushed(app, event)
        run('C:\Users\ASUSi3\Desktop\MATLABProg\PascalTri.m')
        end

        % Button pushed function: FormattedPascalTriangleButton
        function FormattedPascalTriangleButtonPushed(app, event)
        run('C:\Users\ASUSi3\Desktop\MATLABProg\ProperPascalTri.m')
        end

        % Button pushed function: FloydsTriangle
        function FloydsTriangleButtonPushed(app, event)
        run('C:\Users\ASUSi3\Desktop\MATLABProg\FloydTri.m')
        end

        % Button pushed function: FibonacciNumbersButton
        function FibonacciNumbersButtonPushed(app, event)
        run('C:\Users\ASUSi3\Desktop\MATLABProg\Fibonacci.m')
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0 0.5176 0.8588];
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create FourSimpleProgramsGUILabel
            app.FourSimpleProgramsGUILabel = uilabel(app.UIFigure);
            app.FourSimpleProgramsGUILabel.FontName = 'Corbel Light';
            app.FourSimpleProgramsGUILabel.FontSize = 46;
            app.FourSimpleProgramsGUILabel.FontWeight = 'bold';
            app.FourSimpleProgramsGUILabel.FontColor = [1 1 1];
            app.FourSimpleProgramsGUILabel.Position = [54 394 527 62];
            app.FourSimpleProgramsGUILabel.Text = 'Four Simple Programs - GUI';

            % Create Style_Bar_Top
            app.Style_Bar_Top = uilabel(app.UIFigure);
            app.Style_Bar_Top.BackgroundColor = [1 1 1];
            app.Style_Bar_Top.FontName = 'SansSerif';
            app.Style_Bar_Top.FontSize = 1;
            app.Style_Bar_Top.FontWeight = 'bold';
            app.Style_Bar_Top.FontColor = [1 1 1];
            app.Style_Bar_Top.Position = [1 377 640 12];
            app.Style_Bar_Top.Text = '';

            % Create Style_Bar_Bottom
            app.Style_Bar_Bottom = uilabel(app.UIFigure);
            app.Style_Bar_Bottom.BackgroundColor = [1 1 1];
            app.Style_Bar_Bottom.FontName = 'SansSerif';
            app.Style_Bar_Bottom.FontSize = 1;
            app.Style_Bar_Bottom.FontWeight = 'bold';
            app.Style_Bar_Bottom.FontColor = [1 1 1];
            app.Style_Bar_Bottom.Position = [1 445 640 12];
            app.Style_Bar_Bottom.Text = '';

            % Create SimplePascalTriangleButton
            app.SimplePascalTriangleButton = uibutton(app.UIFigure, 'push');
            app.SimplePascalTriangleButton.ButtonPushedFcn = createCallbackFcn(app, @SimplePascalTriangleButtonPushed, true);
            app.SimplePascalTriangleButton.HorizontalAlignment = 'left';
            app.SimplePascalTriangleButton.FontName = 'Corbel Light';
            app.SimplePascalTriangleButton.FontSize = 16;
            app.SimplePascalTriangleButton.FontWeight = 'bold';
            app.SimplePascalTriangleButton.Position = [12 119 164 217];
            app.SimplePascalTriangleButton.Text = {'1 '; '1 1 '; '1 2 1 '; '1 3 3 1 '; '1 4 6 4 1 '; '1 5 10 10 5 1 '; '1 6 15 20 15 6 1 '; '1 7 21 35 35 21 7 1 '; '1 8 28 56 70 56 28 8 1'; ''; 'Simple Pascal Triangle'};

            % Create FormattedPascalTriangleButton
            app.FormattedPascalTriangleButton = uibutton(app.UIFigure, 'push');
            app.FormattedPascalTriangleButton.ButtonPushedFcn = createCallbackFcn(app, @FormattedPascalTriangleButtonPushed, true);
            app.FormattedPascalTriangleButton.FontName = 'Corbel Light';
            app.FormattedPascalTriangleButton.FontSize = 16;
            app.FormattedPascalTriangleButton.FontWeight = 'bold';
            app.FormattedPascalTriangleButton.Position = [452 119 179 217];
            app.FormattedPascalTriangleButton.Text = {'1 '; '1 1 '; '1 2 1 '; '1 3 3 1 '; '1 4 6 4 1 '; '1 5 10 10 5 1 '; '1 6 15 20 15 6 1 '; '1 7 21 35 35 21 7 1 '; '1 8 28 56 70 56 28 8 1'; ''; 'Formatted Pascal Triangle'};

            % Create FibonacciNumbersButton
            app.FibonacciNumbersButton = uibutton(app.UIFigure, 'push');
            app.FibonacciNumbersButton.ButtonPushedFcn = createCallbackFcn(app, @FibonacciNumbersButtonPushed, true);
            app.FibonacciNumbersButton.FontName = 'Corbel Light';
            app.FibonacciNumbersButton.FontSize = 18;
            app.FibonacciNumbersButton.FontWeight = 'bold';
            app.FibonacciNumbersButton.Position = [12 7 619 74];
            app.FibonacciNumbersButton.Text = {'1,     1,	2,	3,	5,	8,	13,	21,	34,	55,	89,	144, 233, 377, 610'; ''; 'Fibonacci Numbers'};

            % Create Style_Bar1
            app.Style_Bar1 = uilabel(app.UIFigure);
            app.Style_Bar1.BackgroundColor = [1 1 1];
            app.Style_Bar1.FontName = 'SansSerif';
            app.Style_Bar1.FontSize = 1;
            app.Style_Bar1.FontWeight = 'bold';
            app.Style_Bar1.FontColor = [1 1 1];
            app.Style_Bar1.Position = [175 221 44 12];
            app.Style_Bar1.Text = '';

            % Create Style_Bar2
            app.Style_Bar2 = uilabel(app.UIFigure);
            app.Style_Bar2.BackgroundColor = [1 1 1];
            app.Style_Bar2.FontName = 'SansSerif';
            app.Style_Bar2.FontSize = 1;
            app.Style_Bar2.FontWeight = 'bold';
            app.Style_Bar2.FontColor = [1 1 1];
            app.Style_Bar2.Position = [313 80 10 40];
            app.Style_Bar2.Text = '';

            % Create FloydsTriangle
            app.FloydsTriangle = uibutton(app.UIFigure, 'push');
            app.FloydsTriangle.ButtonPushedFcn = createCallbackFcn(app, @FloydsTriangleButtonPushed, true);
            app.FloydsTriangle.HorizontalAlignment = 'left';
            app.FloydsTriangle.FontName = 'Corbel Light';
            app.FloydsTriangle.FontSize = 16;
            app.FloydsTriangle.FontWeight = 'bold';
            app.FloydsTriangle.Position = [218 119 200 234];
            app.FloydsTriangle.Text = {'1 '; '2 3 '; '4 5 6 '; '7 8 9 10 '; '11 12 13 14 15 '; '16 17 18 19 20 21 '; '22 23 24 25 26 27 28 '; '29 30 31 32 33 34 35 36 '; '37 38 39 40 41 42 43 44 45 '; '46 47 48 49 50 51 52 53 54 55 '; ''; 'Floyd''s Triangle'};

            % Create Style_Bar3
            app.Style_Bar3 = uilabel(app.UIFigure);
            app.Style_Bar3.BackgroundColor = [1 1 1];
            app.Style_Bar3.FontName = 'SansSerif';
            app.Style_Bar3.FontSize = 1;
            app.Style_Bar3.FontWeight = 'bold';
            app.Style_Bar3.FontColor = [1 1 1];
            app.Style_Bar3.Position = [417 221 36 12];
            app.Style_Bar3.Text = '';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = FourProgGUIExported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
