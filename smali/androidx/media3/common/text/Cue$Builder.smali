.class public final Landroidx/media3/common/text/Cue$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapHeight:F

.field public line:F

.field public lineAnchor:I

.field public lineType:I

.field public multiRowAlignment:Landroid/text/Layout$Alignment;

.field public position:F

.field public positionAnchor:I

.field public shearDegrees:F

.field public size:F

.field public text:Ljava/lang/CharSequence;

.field public textAlignment:Landroid/text/Layout$Alignment;

.field public textSize:F

.field public textSizeType:I

.field public verticalType:I

.field public windowColor:I

.field public windowColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->line:F

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->position:F

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->size:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    return-void
.end method


# virtual methods
.method public final build()Landroidx/media3/common/text/Cue;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/common/text/Cue;

    move-object v2, v1

    iget-object v1, v0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    move-object v3, v2

    iget-object v2, v0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    move-object v4, v3

    iget-object v3, v0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    move-object v5, v4

    iget-object v4, v0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    move-object v6, v5

    iget v5, v0, Landroidx/media3/common/text/Cue$Builder;->line:F

    move-object v7, v6

    iget v6, v0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    move-object v8, v7

    iget v7, v0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    move-object v9, v8

    iget v8, v0, Landroidx/media3/common/text/Cue$Builder;->position:F

    move-object v10, v9

    iget v9, v0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    move-object v11, v10

    iget v10, v0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    move-object v12, v11

    iget v11, v0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    move-object v13, v12

    iget v12, v0, Landroidx/media3/common/text/Cue$Builder;->size:F

    move-object v14, v13

    iget v13, v0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    move-object v15, v14

    iget-boolean v14, v0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    move-object/from16 v16, v15

    iget v15, v0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    move-object/from16 v17, v1

    iget v1, v0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    iget v0, v0, Landroidx/media3/common/text/Cue$Builder;->shearDegrees:F

    move-object/from16 v18, v17

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v16, v1

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-object v0
.end method
