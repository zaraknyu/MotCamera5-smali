.class public abstract Landroidx/compose/ui/draw/BlurKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v8, 0x1

    const v9, 0x1effb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p1

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static blur-F8QBwvs$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 3

    const/4 v0, 0x0

    int-to-float v1, v0

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    :cond_0
    new-instance v1, Landroidx/compose/ui/draw/BlurKt$blur$1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p1, v0, v2}, Landroidx/compose/ui/draw/BlurKt$blur$1;-><init>(FFIZ)V

    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 9

    const/4 v7, 0x1

    const v8, 0x1e7ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 9

    const/4 v7, 0x1

    const v8, 0x1efff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/ui/draw/DrawBehindElement;

    invoke-direct {v0, p1}, Landroidx/compose/ui/draw/DrawBehindElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;
    .locals 6

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_1

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_1
    move v4, p4

    new-instance v0, Landroidx/compose/ui/draw/PainterElement;

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/draw/PainterElement;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/ui/graphics/ColorFilter;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v8, 0x0

    const v9, 0x1feff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v6, p1

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final scale(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v8, 0x0

    const v9, 0x1fffc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
