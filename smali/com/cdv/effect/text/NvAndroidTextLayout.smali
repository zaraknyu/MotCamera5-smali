.class public Lcom/cdv/effect/text/NvAndroidTextLayout;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;,
        Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;,
        Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;,
        Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;,
        Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;,
        Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;,
        Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;
    }
.end annotation


# static fields
.field public static final AlignBottom:I = 0x40

.field public static final AlignHCenter:I = 0x4

.field public static final AlignJustify:I = 0x8

.field public static final AlignLeft:I = 0x1

.field public static final AlignRight:I = 0x2

.field public static final AlignTop:I = 0x20

.field public static final AlignVCenter:I = 0x80

.field private static final TAG:Ljava/lang/String; = "NvAndroidTextLayout"

.field private static final m_verbose:Z = false


# instance fields
.field private m_align:I

.field private m_defaultPaint:Landroid/text/TextPaint;

.field private m_fontFamilyName:Ljava/lang/String;

.field private m_glyphInfoPrepared:Z

.field private m_glyphLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_glyphLinesBounding:[Landroid/graphics/RectF;

.field private m_hozUnderlineInterval:F

.field private m_innerAlign:I

.field private m_layout:Landroid/text/StaticLayout;

.field private m_layoutSpanSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;",
            ">;"
        }
    .end annotation
.end field

.field private m_lineSpacing:F

.field private m_measureBoundingOnly:Z

.field private m_plainText:Ljava/lang/String;

.field private m_text:Landroid/text/SpannableString;

.field private m_textBounding:Landroid/graphics/RectF;

.field private m_underline:Z

.field private m_underlineWidth:F

.field private m_verticalText:Z

.field private m_visualSpanSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;",
            ">;"
        }
    .end annotation
.end field

.field private m_yOffset:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/text/TextPaint;FZFIIZIIZZZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            "FZFIIZIIZZZ",
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x81

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_align:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_innerAlign:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_yOffset:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphInfoPrepared:Z

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_underlineWidth:F

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_hozUnderlineInterval:F

    iput-object p3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_verticalText:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_underline:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_measureBoundingOnly:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_plainText:Ljava/lang/String;

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    iput p7, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_align:I

    iput p8, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_innerAlign:I

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layoutSpanSegments:Ljava/util/ArrayList;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_visualSpanSegments:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_fontFamilyName:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->createPaintForLayoutSpanSegments()V

    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->setupSpansToText()V

    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_underlineWidth:F

    const-string p1, "X"

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_hozUnderlineInterval:F

    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    invoke-direct/range {v0 .. v6}, Lcom/cdv/effect/text/NvAndroidTextLayout;->initLayout(FZFZII)V

    iput p6, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_lineSpacing:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "NvAndroidTextLayout"

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/cdv/effect/text/NvAndroidTextLayout;Landroid/graphics/Paint;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cdv/effect/text/NvAndroidTextLayout;->amendSpanPaint(Landroid/graphics/Paint;II)V

    return-void
.end method

.method public static synthetic access$300(Lcom/cdv/effect/text/NvAndroidTextLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_verticalText:Z

    return p0
.end method

.method private amendSpanPaint(Landroid/graphics/Paint;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    if-lez p2, :cond_2

    const/16 v0, 0x1f4

    if-le p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Typeface;->isBold()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_2
    if-lez p3, :cond_4

    if-lez p3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result p0

    if-nez p0, :cond_3

    const/high16 p0, -0x41800000    # -0.25f

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_4
    :goto_2
    return-void
.end method

.method private appendUnderlineGlyphs()Z
    .locals 15

    iget-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_underline:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layoutSpanSegments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->finalizeVisualSegmentInfo()V

    new-instance v0, Lcom/cdv/effect/text/NvAndroidTextLayout$1;

    invoke-direct {v0, p0}, Lcom/cdv/effect/text/NvAndroidTextLayout$1;-><init>(Lcom/cdv/effect/text/NvAndroidTextLayout;)V

    iget-object v2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_a

    iget-object v5, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v6, p0

    goto/16 :goto_5

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v13, -0x1

    move v12, v1

    move v11, v13

    :goto_1
    const/4 v14, 0x1

    if-ge v12, v5, :cond_7

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-boolean v6, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->underline:Z

    if-eqz v6, :cond_3

    if-gez v11, :cond_4

    move-object v6, p0

    move v11, v12

    goto :goto_3

    :cond_3
    if-gez v11, :cond_5

    :cond_4
    move-object v6, p0

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_6

    move v8, v14

    goto :goto_2

    :cond_6
    move v8, v1

    :goto_2
    iget-object v4, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v9, v4, v3

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/cdv/effect/text/NvAndroidTextLayout;->emitUnderlineGlyph(Ljava/util/ArrayList;ZLandroid/graphics/RectF;Ljava/util/ArrayList;II)V

    move v11, v13

    move v4, v14

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object p0, v6

    goto :goto_1

    :cond_7
    move-object v6, p0

    if-ltz v11, :cond_9

    add-int/lit8 p0, v2, -0x1

    if-ne v3, p0, :cond_8

    move v8, v14

    goto :goto_4

    :cond_8
    move v8, v1

    :goto_4
    iget-object p0, v6, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v9, p0, v3

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/cdv/effect/text/NvAndroidTextLayout;->emitUnderlineGlyph(Ljava/util/ArrayList;ZLandroid/graphics/RectF;Ljava/util/ArrayList;II)V

    move v4, v14

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object p0, v6

    goto :goto_0

    :cond_a
    return v4
.end method

.method private calcGlyphAdvanceForVericalLayout(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;FZ)F
    .locals 0

    iget p0, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    neg-float p0, p0

    iget p1, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontDescent:F

    add-float/2addr p0, p1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_0

    add-float/2addr p0, p2

    return p0

    :cond_0
    if-nez p3, :cond_1

    const/high16 p1, 0x42c80000    # 100.0f

    cmpl-float p3, p2, p1

    if-eqz p3, :cond_1

    div-float/2addr p2, p1

    mul-float/2addr p2, p0

    return p2

    :cond_1
    return p0
.end method

.method private createPaintForLayoutSpanSegments()V
    .locals 5

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layoutSpanSegments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;

    iget-object v2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    iput-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->paint:Landroid/graphics/Paint;

    iget v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->fontSizeRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    iget v4, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->fontSizeRatio:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_2
    iget-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->typeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    if-ne v2, v3, :cond_3

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->paint:Landroid/graphics/Paint;

    :cond_3
    iget-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->paint:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->weight:I

    iget v1, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->italic:I

    invoke-direct {p0, v2, v3, v1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->amendSpanPaint(Landroid/graphics/Paint;II)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private emitUnderlineGlyph(Ljava/util/ArrayList;ZLandroid/graphics/RectF;Ljava/util/ArrayList;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;",
            ">;Z",
            "Landroid/graphics/RectF;",
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, -0x1

    move/from16 v8, p6

    move v7, v6

    move-object v6, v5

    move/from16 v5, p5

    :goto_0
    if-ge v5, v8, :cond_2

    if-ltz v7, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v9, v9, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->visualSpanSegment:Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;

    if-eq v9, v6, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v6, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->visualSpanSegment:Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;

    move v7, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_7

    mul-int/lit8 v7, v6, 0x2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v7, v9

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v10, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_verticalText:Z

    if-nez v10, :cond_5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v10, v10, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    if-ge v7, v3, :cond_3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v7, v7, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_3
    iget v7, v1, Landroid/graphics/RectF;->right:F

    :goto_2
    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    if-nez p2, :cond_4

    iget v12, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_lineSpacing:F

    sub-float/2addr v11, v12

    :cond_4
    iget v12, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_underlineWidth:F

    sub-float v12, v11, v12

    goto :goto_4

    :cond_5
    iget v10, v1, Landroid/graphics/RectF;->left:F

    iget v11, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_hozUnderlineInterval:F

    sub-float/2addr v10, v11

    iget v11, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_underlineWidth:F

    sub-float v11, v10, v11

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v12, v12, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget v13, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    add-float/2addr v12, v13

    if-ge v7, v3, :cond_6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v13, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget v7, v7, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    add-float/2addr v7, v13

    :goto_3
    move v15, v12

    move v12, v7

    move v7, v10

    move v10, v11

    move v11, v15

    goto :goto_4

    :cond_6
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :goto_4
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    new-instance v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    invoke-direct {v13}, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;-><init>()V

    iput-boolean v9, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->decorativeGlyph:Z

    iget v14, v8, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iput v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14}, Landroid/graphics/PointF;-><init>()V

    iput-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    iput-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v14, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v14, v7, v12}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v7, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget-object v10, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v10, v7, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v7, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    iput-object v7, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    iget-object v7, v8, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->visualSpanSegment:Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;

    iput-object v7, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->visualSpanSegment:Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;

    iget v7, v8, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    iput v7, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    iget v7, v8, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontDescent:F

    iput v7, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontDescent:F

    move-object/from16 v7, p1

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private finalizeVisualSegmentInfo()V
    .locals 7

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_visualSpanSegments:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    :cond_3
    :goto_0
    if-ltz v1, :cond_5

    iget-object v4, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_visualSpanSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;

    iget v5, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iget v6, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;->start:I

    if-lt v5, v6, :cond_4

    iget v6, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;->end:I

    if-ge v5, v6, :cond_4

    iput-object v4, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->visualSpanSegment:Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_visualSpanSegments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-gez v1, :cond_2

    :cond_6
    if-gez v1, :cond_1

    :cond_7
    :goto_2
    return-void
.end method

.method private initLayout(FZFZII)V
    .locals 7

    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_verticalText:Z

    if-nez v0, :cond_0

    move v0, p5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_1
    iget-object v2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    iget-object v4, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_2

    int-to-float v2, p6

    sub-float/2addr v2, v1

    :goto_1
    iput v2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_yOffset:F

    goto :goto_2

    :cond_2
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    int-to-float v2, p6

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    goto :goto_1

    :cond_3
    :goto_2
    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    iget-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_verticalText:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->prepareGlyphLines()V

    int-to-float p5, p5

    int-to-float p6, p6

    move v6, p2

    move p2, p1

    move p1, p4

    move p4, p3

    move p3, v6

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/cdv/effect/text/NvAndroidTextLayout;->layoutVertically(ZFZFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "NvAndroidTextLayout"

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private internalPrepareGlyphLines()V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphInfoPrepared:Z

    if-eqz v1, :cond_0

    goto/16 :goto_21

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphInfoPrepared:Z

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    if-nez v2, :cond_1

    goto/16 :goto_21

    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layoutSpanSegments:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    iget-object v5, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    new-array v6, v5, [Landroid/graphics/RectF;

    iput-object v6, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v5, :cond_1f

    iget-object v9, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    aput-object v10, v9, v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v7}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v10

    iget-object v11, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v11, v7}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v11

    iget-object v12, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    sub-int v13, v12, v11

    new-array v14, v13, [F

    iget-object v15, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    invoke-virtual {v15, v4, v11, v12, v14}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    move-result v4

    if-eq v4, v13, :cond_3

    const-string v4, "NvAndroidTextLayout"

    const-string v13, "Paint.getTextWidths() return unexpected value!"

    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v13, v1

    move v15, v11

    const/16 v20, 0x0

    :goto_2
    if-ge v15, v12, :cond_6

    add-int/lit8 v16, v15, 0x1

    iget-object v3, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    invoke-virtual {v3, v15}, Landroid/text/SpannableString;->charAt(I)C

    move-result v3

    invoke-direct {v0, v3}, Lcom/cdv/effect/text/NvAndroidTextLayout;->mayHaveDubiousLigature(C)Z

    move-result v3

    move/from16 v6, v16

    :goto_3
    if-ge v6, v12, :cond_5

    sub-int v16, v6, v11

    aget v16, v14, v16

    cmpl-float v16, v16, v20

    if-eqz v16, :cond_4

    if-eqz v3, :cond_5

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    invoke-virtual {v1, v6}, Landroid/text/SpannableString;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->mayHaveDubiousLigature(C)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    sub-int v1, v6, v15

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    invoke-virtual {v1, v15}, Landroid/text/SpannableString;->charAt(I)C

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_7

    :cond_6
    move v14, v12

    const/4 v3, 0x0

    move v12, v11

    goto/16 :goto_9

    :cond_7
    new-instance v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;-><init>(Lcom/cdv/effect/text/NvAndroidTextLayout$1;)V

    iput v15, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->startCharIdx:I

    iput v6, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->endCharIdx:I

    iget-object v3, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v15}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->isRtl:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    move v3, v13

    :cond_9
    :goto_4
    if-ltz v2, :cond_d

    iget-object v13, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layoutSpanSegments:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;

    iget v15, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->startCharIdx:I

    move/from16 v21, v2

    iget v2, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->start:I

    if-lt v15, v2, :cond_c

    iget v2, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->end:I

    if-ge v15, v2, :cond_c

    iget v2, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->underline:I

    const/4 v15, -0x1

    if-eq v2, v15, :cond_b

    if-lez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->underline:Z

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    iget-object v13, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->paint:Landroid/graphics/Paint;

    iput-object v13, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->paint:Landroid/graphics/Paint;

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v21, 0x1

    iget-object v13, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layoutSpanSegments:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_9

    const/4 v2, -0x1

    goto :goto_4

    :cond_d
    move/from16 v21, v2

    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_e

    iget-boolean v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_underline:Z

    iput-boolean v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->underline:Z

    :cond_e
    iget-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->paint:Landroid/graphics/Paint;

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    iput-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->paint:Landroid/graphics/Paint;

    :cond_f
    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layoutSpanSegments:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    iget v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->startCharIdx:I

    sub-int/2addr v2, v11

    aget v2, v14, v2

    iput v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->advance:F

    move/from16 v29, v12

    move v12, v11

    move-object v11, v14

    move/from16 v14, v29

    goto :goto_8

    :cond_10
    move/from16 v17, v12

    iget-object v12, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->paint:Landroid/graphics/Paint;

    iget-object v13, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    move-object v2, v14

    iget v14, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->startCharIdx:I

    iget v15, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->endCharIdx:I

    move-object/from16 v16, v2

    iget-boolean v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->isRtl:Z

    move/from16 v19, v15

    move-object/from16 v18, v16

    move/from16 v16, v11

    move-object/from16 v11, v18

    move/from16 v18, v2

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Paint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v2

    move/from16 v12, v16

    move/from16 v14, v17

    iput v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->advance:F

    :goto_8
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v14

    move-object v14, v11

    move v11, v12

    move v12, v1

    move v13, v3

    move v15, v6

    move/from16 v2, v21

    const/4 v1, 0x1

    goto/16 :goto_2

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;

    iget-boolean v11, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_measureBoundingOnly:Z

    if-nez v11, :cond_11

    iget-object v11, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    iget v15, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->startCharIdx:I

    invoke-virtual {v11, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    iput v11, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->primaryHorizontal:F

    if-nez v13, :cond_12

    iget-object v11, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    iget v15, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->startCharIdx:I

    invoke-virtual {v11, v15}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v11

    iput v11, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->secondaryHorizontal:F

    goto :goto_b

    :cond_11
    move/from16 v11, v20

    iput v11, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->primaryHorizontal:F

    :cond_12
    :goto_b
    const/16 v20, 0x0

    goto :goto_a

    :cond_13
    new-instance v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;

    iget-object v6, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v7}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v6

    invoke-direct {v1, v4, v6, v13}, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;-><init>(Ljava/util/ArrayList;IZ)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_1b

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;

    iget v15, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->startCharIdx:I

    move-object/from16 v16, v1

    iget v1, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->endCharIdx:I

    move/from16 v17, v2

    new-instance v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    invoke-direct {v2}, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;-><init>()V

    iput v15, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iput v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    iput v12, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineStart:I

    iput v14, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineEnd:I

    move-object/from16 v18, v4

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    iget-object v4, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_plainText:Ljava/lang/String;

    invoke-direct {v0, v4, v15, v1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->mayHaveContextualForm(Ljava/lang/String;II)Z

    move-result v4

    iput-boolean v4, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->mayHaveContextualForm:Z

    iget-boolean v4, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->isRtl:Z

    iput-boolean v4, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->isRtl:Z

    invoke-virtual/range {v16 .. v16}, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->nextGlyphPosition()F

    move-result v4

    move/from16 v24, v1

    new-instance v1, Landroid/graphics/PointF;

    move/from16 v19, v11

    int-to-float v11, v10

    move/from16 v28, v10

    iget v10, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_yOffset:F

    add-float/2addr v11, v10

    invoke-direct {v1, v4, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget-boolean v1, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->underline:Z

    iput-boolean v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->underline:Z

    iget-object v1, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->paint:Landroid/graphics/Paint;

    iput-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iput v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    iget-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iput v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontDescent:F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    iget-object v10, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    iget-object v11, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_plainText:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    move-object/from16 v21, v10

    iget v10, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move/from16 v26, v1

    move/from16 v25, v10

    move-object/from16 v22, v11

    move/from16 v23, v15

    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    move/from16 v1, v23

    move/from16 v10, v24

    iget-object v11, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17

    iget-boolean v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->mayHaveContextualForm:Z

    if-nez v1, :cond_14

    iget-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    iget-object v4, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    const/4 v11, 0x0

    invoke-virtual {v1, v4, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_d

    :cond_14
    const/4 v11, 0x0

    iget v1, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->advance:F

    iget-object v10, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iput v4, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iput v4, v10, Landroid/graphics/RectF;->right:F

    iget-object v4, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Lcom/cdv/effect/text/NvAndroidTextLayout;->isItalicPaint(Landroid/graphics/Paint;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v10, v4, Landroid/graphics/RectF;->right:F

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v13

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v10, v1

    iput v10, v4, Landroid/graphics/RectF;->right:F

    :cond_15
    iget-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    if-eq v3, v1, :cond_16

    iget-object v3, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_plainText:Ljava/lang/String;

    invoke-virtual {v1, v3, v12, v14, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    :cond_16
    iget-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget-object v4, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    iput v10, v1, Landroid/graphics/RectF;->top:F

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    add-float/2addr v4, v10

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_d

    :cond_17
    const/4 v11, 0x0

    iget-object v4, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_plainText:Ljava/lang/String;

    invoke-direct {v0, v4, v1, v10}, Lcom/cdv/effect/text/NvAndroidTextLayout;->isSuspectableColorGlyph(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    :cond_18
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v13, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    iget-object v15, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_plainText:Ljava/lang/String;

    invoke-virtual {v13, v15, v1, v10, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget-object v4, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v10, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v10, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->isItalicPaint(Landroid/graphics/Paint;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    if-eqz v1, :cond_19

    iget-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    const v13, 0x3dcccccd    # 0.1f

    invoke-static {v4, v10, v13, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    iput v4, v1, Landroid/graphics/RectF;->right:F

    :cond_19
    :goto_d
    iget-boolean v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    if-nez v1, :cond_1a

    iget-object v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    iput-boolean v1, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->noShape:Z

    :cond_1a
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v19, 0x1

    move v11, v1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v4, v18

    move/from16 v10, v28

    goto/16 :goto_c

    :cond_1b
    move/from16 v17, v2

    const/4 v11, 0x0

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v7

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v7

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v3, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v3, v3, v7

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget-object v2, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v3, Landroid/graphics/RectF;->right:F

    goto :goto_e

    :cond_1d
    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v7

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_yOffset:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v7

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_yOffset:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_f

    :cond_1e
    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v7

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    :goto_f
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v17

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_1f
    const/4 v11, 0x0

    iget-boolean v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_verticalText:Z

    if-eqz v1, :cond_20

    goto/16 :goto_21

    :cond_20
    iget v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_28

    move v4, v11

    :goto_10
    if-ge v4, v5, :cond_28

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v15, -0x1

    goto/16 :goto_15

    :cond_21
    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v1

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    iget-object v3, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    sub-float/2addr v3, v2

    iget v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v6, v2, 0x1

    const/4 v15, -0x1

    if-eqz v6, :cond_22

    if-ne v1, v15, :cond_23

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v3

    neg-float v1, v1

    :goto_11
    const/4 v2, 0x0

    goto :goto_12

    :cond_22
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v3

    goto :goto_11

    :cond_23
    const/4 v1, 0x0

    goto :goto_11

    :goto_12
    cmpl-float v3, v1, v2

    if-nez v3, :cond_24

    goto :goto_15

    :cond_24
    iget-object v3, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v3, v3, v4

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v3, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v7, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v7, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v7, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    if-eqz v7, :cond_26

    invoke-static {}, Lcom/cdv/effect/text/NvAndroidTextLayout;->shouldWorkaroundPathOffsetIssue()Z

    move-result v7

    if-eqz v7, :cond_25

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v6, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_14

    :cond_25
    iget-object v6, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    :cond_26
    :goto_14
    const/4 v2, 0x0

    goto :goto_13

    :cond_27
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    :cond_28
    move v4, v11

    :goto_16
    if-ge v4, v5, :cond_2b

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_17

    :cond_29
    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_2a
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2b
    iget v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v1, v1, 0x7

    iget v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_innerAlign:I

    if-eq v1, v2, :cond_38

    move v4, v11

    :goto_18
    if-ge v4, v5, :cond_38

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_20

    :cond_2c
    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v3, v2, 0x1

    const/4 v6, 0x4

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v9, 0x2

    if-eqz v3, :cond_2f

    iget v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_innerAlign:I

    if-ne v2, v9, :cond_2d

    sub-float v11, v8, v1

    :goto_19
    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_1e

    :cond_2d
    if-ne v2, v6, :cond_2e

    sub-float v1, v8, v1

    div-float v11, v1, v7

    goto :goto_19

    :cond_2e
    const/4 v3, 0x1

    goto :goto_1d

    :cond_2f
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_31

    iget v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_innerAlign:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    sub-float v1, v8, v1

    neg-float v11, v1

    :goto_1a
    const/4 v2, 0x0

    goto :goto_1e

    :cond_30
    if-ne v2, v6, :cond_33

    :goto_1b
    sub-float v1, v8, v1

    neg-float v1, v1

    :goto_1c
    div-float v11, v1, v7

    goto :goto_1a

    :cond_31
    const/4 v3, 0x1

    iget v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_innerAlign:I

    if-ne v2, v3, :cond_32

    goto :goto_1b

    :cond_32
    if-ne v2, v9, :cond_33

    sub-float v1, v8, v1

    goto :goto_1c

    :cond_33
    :goto_1d
    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_1e
    cmpl-float v1, v11, v2

    if-nez v1, :cond_34

    goto :goto_20

    :cond_34
    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v4

    invoke-virtual {v1, v11, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v7, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    invoke-virtual {v7, v11, v2}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v7, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v7, v11, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v7, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    if-eqz v7, :cond_35

    invoke-static {}, Lcom/cdv/effect/text/NvAndroidTextLayout;->shouldWorkaroundPathOffsetIssue()Z

    move-result v7

    if-eqz v7, :cond_36

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v11, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v6, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_1f

    :cond_36
    iget-object v6, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v6, v11, v2}, Landroid/graphics/Path;->offset(FF)V

    goto :goto_1f

    :cond_37
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_18

    :cond_38
    invoke-direct {v0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->appendUnderlineGlyphs()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v0, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_underlineWidth:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :cond_39
    :goto_21
    return-void
.end method

.method private isItalicPaint(Landroid/graphics/Paint;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private isSuspectableColorGlyph(Ljava/lang/String;II)Z
    .locals 4

    :goto_0
    const/4 p0, 0x1

    if-ge p2, p3, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x200d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x200c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, p3, -0x1

    if-lt p2, v1, :cond_3

    return v2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    return v2

    :cond_6
    :goto_1
    add-int/2addr p2, p0

    goto :goto_0

    :cond_7
    return p0
.end method

.method private layoutVertically(ZFZFFF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    new-instance v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;-><init>(Lcom/cdv/effect/text/NvAndroidTextLayout$1;)V

    const/4 v5, 0x0

    iput v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    iput v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    iput v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->currentLineHeight:F

    iput v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->glyphTopLine:F

    iput v2, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->lineRight:F

    const/4 v6, 0x0

    iput v6, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->currentGlyphCountInLine:I

    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->firstLine:Z

    if-eqz p1, :cond_0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    :cond_0
    const/high16 v8, 0x48000000    # 131072.0f

    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-boolean v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->decorativeGlyph:Z

    if-eqz v14, :cond_1

    goto :goto_2

    :cond_1
    iget-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget-object v15, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v6, v15, Landroid/graphics/PointF;->x:F

    neg-float v6, v6

    iget v15, v15, Landroid/graphics/PointF;->y:F

    neg-float v15, v15

    invoke-virtual {v14, v6, v15}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v6, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/cdv/effect/text/NvAndroidTextLayout;->shouldWorkaroundPathOffsetIssue()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->x:F

    neg-float v15, v15

    iget v14, v14, Landroid/graphics/PointF;->y:F

    neg-float v14, v14

    invoke-virtual {v6, v15, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_3

    :cond_2
    iget-object v6, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    iget-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->x:F

    neg-float v15, v15

    iget v14, v14, Landroid/graphics/PointF;->y:F

    neg-float v14, v14

    invoke-virtual {v6, v15, v14}, Landroid/graphics/Path;->offset(FF)V

    :cond_3
    :goto_3
    iget v6, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->glyphTopLine:F

    iget v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    sub-float/2addr v6, v14

    if-eqz p1, :cond_4

    iget v14, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->currentGlyphCountInLine:I

    if-eqz v14, :cond_4

    iget-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v6

    cmpl-float v14, v14, v8

    if-lez v14, :cond_4

    iget-object v6, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v10, v1, v6}, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->moveToNextLine(Ljava/util/ArrayList;FLandroid/graphics/Paint;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget v10, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->glyphTopLine:F

    iget v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    sub-float/2addr v10, v14

    move/from16 v16, v10

    move-object v10, v6

    move/from16 v6, v16

    :cond_4
    iget-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v6

    iput v14, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->currentLineHeight:F

    iget-object v14, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iput v6, v14, Landroid/graphics/PointF;->y:F

    move/from16 v6, p2

    move/from16 v14, p3

    invoke-direct {v0, v13, v6, v14}, Lcom/cdv/effect/text/NvAndroidTextLayout;->calcGlyphAdvanceForVericalLayout(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;FZ)F

    move-result v15

    iget v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->glyphTopLine:F

    add-float/2addr v5, v15

    iput v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->glyphTopLine:F

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->currentGlyphCountInLine:I

    add-int/2addr v5, v7

    iput v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->currentGlyphCountInLine:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_5
    move/from16 v6, p2

    move/from16 v14, p3

    iget-object v5, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v10, v1, v5}, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->moveToNextLine(Ljava/util/ArrayList;FLandroid/graphics/Paint;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_6
    iput-object v9, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    iget v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v5, v1, 0x40

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_7

    iget v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    sub-float/2addr v5, v2

    goto :goto_4

    :cond_7
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_8

    iget v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v6

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_9

    iget v1, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    sub-float v1, v3, v1

    goto :goto_5

    :cond_9
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    iget v1, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    sub-float v1, v3, v1

    div-float/2addr v1, v6

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/RectF;

    iput-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_14

    iget-object v8, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v7, v8}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v9, v9, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    :goto_7
    iget v10, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_innerAlign:I

    and-int/lit8 v11, v10, 0x2

    if-eqz v11, :cond_c

    iget v10, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    sub-float/2addr v10, v9

    :goto_8
    add-float/2addr v10, v1

    goto :goto_9

    :cond_c
    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_d

    iget v10, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    sub-float/2addr v10, v9

    div-float/2addr v10, v6

    goto :goto_8

    :cond_d
    move v10, v1

    :goto_9
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    new-instance v12, Landroid/graphics/RectF;

    iget-object v13, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->lineInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;

    iget v13, v13, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;->lineLeft:F

    iget-object v14, v11, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    iget-object v15, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->lineInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;

    iget v15, v15, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;->lineRight:F

    iget-object v6, v11, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v12, v13, v14, v15, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v12, v5, v10}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v6, v11, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v13, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v5

    iput v13, v6, Landroid/graphics/PointF;->x:F

    iget v13, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v10

    iput v13, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v11, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v6, v5, v10}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v6, v11, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/cdv/effect/text/NvAndroidTextLayout;->shouldWorkaroundPathOffsetIssue()Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v5, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v11, v11, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v11, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_b

    :cond_e
    iget-object v6, v11, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v10}, Landroid/graphics/Path;->offset(FF)V

    :cond_f
    :goto_b
    invoke-virtual {v9}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v9, v12}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_c

    :cond_10
    invoke-virtual {v9, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_c
    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_a

    :cond_11
    invoke-virtual {v9}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->lineInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;

    iget v6, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;->lineLeft:F

    iput v6, v9, Landroid/graphics/RectF;->left:F

    iget-object v6, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->lineInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;

    iget v6, v6, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;->lineRight:F

    iput v6, v9, Landroid/graphics/RectF;->right:F

    const/4 v6, 0x0

    iput v6, v9, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v5, v10}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_d

    :cond_12
    const/4 v6, 0x0

    :goto_d
    iget-object v8, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aput-object v9, v8, v3

    iget-object v8, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_e

    :cond_13
    iget-object v8, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_e
    add-int/lit8 v3, v3, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    goto/16 :goto_6

    :cond_14
    invoke-direct {v0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->appendUnderlineGlyphs()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v0, v0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_underlineWidth:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    :cond_15
    return-void
.end method

.method private mayHaveContextualForm(Ljava/lang/String;II)Z
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x600

    if-lt p0, v0, :cond_0

    const/16 v0, 0x6ff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private mayHaveDubiousLigature(C)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    sget-object p1, Ljava/lang/Character$UnicodeBlock;->DEVANAGARI_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->DEVANAGARI:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v0
.end method

.method private prepareGlyphLines()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->internalPrepareGlyphLines()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "NvAndroidTextLayout"

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private setupSpansToText()V
    .locals 8

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_layoutSpanSegments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;

    iget-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    iget-object v3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_defaultPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->start:I

    iget v6, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->end:I

    invoke-virtual {v4, v5, v2, v6, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    iget-object v2, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->typeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    new-instance v4, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;

    iget-object v5, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->typeface:Landroid/graphics/Typeface;

    iget v6, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->weight:I

    iget v7, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->italic:I

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;-><init>(Lcom/cdv/effect/text/NvAndroidTextLayout;Landroid/graphics/Typeface;II)V

    iget v5, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->start:I

    iget v1, v1, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->end:I

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static shouldWorkaroundPathOffsetIssue()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->MZR16_ENCODE:Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

    invoke-static {v0, v1}, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->equals(Ljava/lang/String;Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public FontFamilyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_fontFamilyName:Ljava/lang/String;

    return-object p0
.end method

.method public createLineInfoByteBuffer()Ljava/nio/ByteBuffer;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x34

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v3, v3, v2

    iget v4, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-boolean v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-boolean v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->noShape:Z

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-boolean v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->decorativeGlyph:Z

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget v4, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontDescent:F

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "NvAndroidTextLayout"

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->prepareGlyphLines()V

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method public getBoundingRectAtLine(I)Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->prepareGlyphLines()V

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    if-eqz p0, :cond_1

    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method public getGlyphCountInLine(I)I
    .locals 1

    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->prepareGlyphLines()V

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGlyphInfo(II)Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;
    .locals 2

    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->prepareGlyphLines()V

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getLineCount()I
    .locals 0

    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->prepareGlyphLines()V

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getText()Landroid/text/SpannableString;
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout;->m_text:Landroid/text/SpannableString;

    return-object p0
.end method

.method public prepareDrawText()Z
    .locals 0

    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->prepareGlyphLines()V

    const/4 p0, 0x1

    return p0
.end method
