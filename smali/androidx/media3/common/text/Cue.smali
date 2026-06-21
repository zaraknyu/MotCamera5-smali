.class public final Landroidx/media3/common/text/Cue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIELD_BITMAP_BYTES:Ljava/lang/String;

.field public static final FIELD_BITMAP_HEIGHT:Ljava/lang/String;

.field public static final FIELD_BITMAP_PARCELABLE:Ljava/lang/String;

.field public static final FIELD_CUSTOM_SPANS:Ljava/lang/String;

.field public static final FIELD_LINE:Ljava/lang/String;

.field public static final FIELD_LINE_ANCHOR:Ljava/lang/String;

.field public static final FIELD_LINE_TYPE:Ljava/lang/String;

.field public static final FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

.field public static final FIELD_POSITION:Ljava/lang/String;

.field public static final FIELD_POSITION_ANCHOR:Ljava/lang/String;

.field public static final FIELD_SHEAR_DEGREES:Ljava/lang/String;

.field public static final FIELD_SIZE:Ljava/lang/String;

.field public static final FIELD_TEXT:Ljava/lang/String;

.field public static final FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

.field public static final FIELD_TEXT_SIZE:Ljava/lang/String;

.field public static final FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

.field public static final FIELD_VERTICAL_TYPE:Ljava/lang/String;

.field public static final FIELD_WINDOW_COLOR:Ljava/lang/String;

.field public static final FIELD_WINDOW_COLOR_SET:Ljava/lang/String;


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final bitmapHeight:F

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final multiRowAlignment:Landroid/text/Layout$Alignment;

.field public final position:F

.field public final positionAnchor:I

.field public final shearDegrees:F

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final windowColor:I

.field public final windowColorSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v1, ""

    new-instance v0, Landroidx/media3/common/text/Cue;

    const/4 v2, 0x0

    const v5, -0x800001

    const/high16 v6, -0x80000000

    const/4 v14, 0x0

    const/high16 v15, -0x1000000

    const/16 v17, 0x0

    move-object v3, v2

    move-object v4, v2

    move v7, v6

    move v8, v5

    move v9, v6

    move v10, v6

    move v11, v5

    move v12, v5

    move v13, v5

    move/from16 v16, v6

    invoke-direct/range {v0 .. v17}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_CUSTOM_SPANS:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_PARCELABLE:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_BYTES:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    if-nez p4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    :goto_1
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    :goto_2
    iput-object p2, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object p3, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object p4, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput p5, p0, Landroidx/media3/common/text/Cue;->line:F

    iput p6, p0, Landroidx/media3/common/text/Cue;->lineType:I

    iput p7, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iput p8, p0, Landroidx/media3/common/text/Cue;->position:F

    iput p9, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iput p12, p0, Landroidx/media3/common/text/Cue;->size:F

    iput p13, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iput-boolean p14, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    move/from16 p1, p15

    iput p1, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    iput p10, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    iput p11, p0, Landroidx/media3/common/text/Cue;->textSize:F

    move/from16 p1, p16

    iput p1, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    move/from16 p1, p17

    iput p1, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    return-void
.end method


# virtual methods
.method public final buildUpon()Landroidx/media3/common/text/Cue$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v1, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget v1, p0, Landroidx/media3/common/text/Cue;->line:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->line:F

    iget v1, p0, Landroidx/media3/common/text/Cue;->lineType:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->position:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->position:F

    iget v1, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->textSize:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iget v1, p0, Landroidx/media3/common/text/Cue;->size:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->size:F

    iget v1, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    iget-boolean v1, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    iput-boolean v1, v0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    iget v1, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    iget v1, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    iget p0, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    iput p0, v0, Landroidx/media3/common/text/Cue$Builder;->shearDegrees:F

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Landroidx/media3/common/text/Cue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/text/Cue;

    iget-object v2, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, p1, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget v2, p0, Landroidx/media3/common/text/Cue;->line:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->line:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->lineType:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->lineType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->position:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->position:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->size:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->size:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    iget-boolean v3, p1, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->windowColor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->textSizeType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->textSize:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->textSize:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->verticalType:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    iget p1, p1, Landroidx/media3/common/text/Cue;->shearDegrees:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_3

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/common/text/Cue;->line:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v1, v0, Landroidx/media3/common/text/Cue;->lineType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Landroidx/media3/common/text/Cue;->position:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v1, v0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Landroidx/media3/common/text/Cue;->size:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget v1, v0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-boolean v1, v0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget v1, v0, Landroidx/media3/common/text/Cue;->windowColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Landroidx/media3/common/text/Cue;->textSizeType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroidx/media3/common/text/Cue;->textSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    iget v1, v0, Landroidx/media3/common/text/Cue;->verticalType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    iget-object v2, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
