.class public final Landroidx/media3/ui/SubtitlePainter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundColor:I

.field public final bitmapPaint:Landroid/graphics/Paint;

.field public bitmapRect:Landroid/graphics/Rect;

.field public bottomPaddingFraction:F

.field public cueBitmap:Landroid/graphics/Bitmap;

.field public cueBitmapHeight:F

.field public cueLine:F

.field public cueLineAnchor:I

.field public cueLineType:I

.field public cuePosition:F

.field public cuePositionAnchor:I

.field public cueSize:F

.field public cueText:Ljava/lang/CharSequence;

.field public cueTextAlignment:Landroid/text/Layout$Alignment;

.field public cueTextSizePx:F

.field public defaultTextSizePx:F

.field public edgeColor:I

.field public edgeLayout:Landroid/text/StaticLayout;

.field public edgeType:I

.field public foregroundColor:I

.field public final outlineWidth:F

.field public parentBottom:I

.field public parentLeft:I

.field public parentRight:I

.field public parentTop:I

.field public final shadowOffset:F

.field public final shadowRadius:F

.field public final spacingAdd:F

.field public final spacingMult:F

.field public textLayout:Landroid/text/StaticLayout;

.field public textLeft:I

.field public textPaddingX:I

.field public final textPaint:Landroid/text/TextPaint;

.field public textTop:I

.field public windowColor:I

.field public final windowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1010217

    const v1, 0x1010218

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->outlineWidth:F

    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->shadowOffset:F

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method public final drawLayout(Landroid/graphics/Canvas;Z)V
    .locals 9

    if-eqz p2, :cond_a

    iget-object p2, p0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    iget-object v0, p0, Landroidx/media3/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    if-eqz p2, :cond_9

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->textLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->textTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_1

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    iget-object v8, p0, Landroidx/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->textPaddingX:I

    neg-int v2, v2

    int-to-float v4, v2

    invoke-virtual {p2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->textPaddingX:I

    add-int/2addr v2, v3

    int-to-float v6, v2

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    if-ne p1, v4, :cond_2

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->outlineWidth:F

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    const/4 v6, 0x2

    iget v7, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    if-ne p1, v6, :cond_3

    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->shadowOffset:F

    iget v0, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v5, v7, p1, p1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_3

    :cond_3
    const/4 v6, 0x3

    if-eq p1, v6, :cond_4

    const/4 v8, 0x4

    if-ne p1, v8, :cond_8

    :cond_4
    if-ne p1, v6, :cond_5

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    const/4 p1, -0x1

    if-eqz v4, :cond_6

    move v6, p1

    goto :goto_2

    :cond_6
    iget v6, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    :goto_2
    if-eqz v4, :cond_7

    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    :cond_7
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v7, v4

    iget v8, p0, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    neg-float v8, v4

    invoke-virtual {v5, v7, v8, v8, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v0, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5, v7, v4, v4, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_8
    :goto_3
    iget p0, p0, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    invoke-virtual {v5, p0, p0, p0, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    :goto_4
    return-void

    :cond_a
    move-object v3, p1

    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object p2, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    iget-object p0, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
