.class public final Landroidx/compose/material3/TextKt$Text$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$changed1:I

.field public final synthetic $$default:I

.field public final synthetic $color:J

.field public final synthetic $fontSize:J

.field public final synthetic $fontWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final synthetic $letterSpacing:J

.field public final synthetic $lineHeight:J

.field public final synthetic $maxLines:I

.field public final synthetic $minLines:I

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $overflow:I

.field public final synthetic $softWrap:Z

.field public final synthetic $style:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic $text:Ljava/lang/String;

.field public final synthetic $textAlign:Landroidx/compose/ui/text/style/TextAlign;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;III)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TextKt$Text$1;->$text:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/TextKt$Text$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Landroidx/compose/material3/TextKt$Text$1;->$color:J

    iput-wide p5, p0, Landroidx/compose/material3/TextKt$Text$1;->$fontSize:J

    iput-object p7, p0, Landroidx/compose/material3/TextKt$Text$1;->$fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-wide p8, p0, Landroidx/compose/material3/TextKt$Text$1;->$letterSpacing:J

    iput-object p10, p0, Landroidx/compose/material3/TextKt$Text$1;->$textAlign:Landroidx/compose/ui/text/style/TextAlign;

    iput-wide p11, p0, Landroidx/compose/material3/TextKt$Text$1;->$lineHeight:J

    iput p13, p0, Landroidx/compose/material3/TextKt$Text$1;->$overflow:I

    iput-boolean p14, p0, Landroidx/compose/material3/TextKt$Text$1;->$softWrap:Z

    iput p15, p0, Landroidx/compose/material3/TextKt$Text$1;->$maxLines:I

    move/from16 p1, p16

    iput p1, p0, Landroidx/compose/material3/TextKt$Text$1;->$minLines:I

    move-object/from16 p1, p17

    iput-object p1, p0, Landroidx/compose/material3/TextKt$Text$1;->$style:Landroidx/compose/ui/text/TextStyle;

    move/from16 p1, p18

    iput p1, p0, Landroidx/compose/material3/TextKt$Text$1;->$$changed:I

    move/from16 p1, p19

    iput p1, p0, Landroidx/compose/material3/TextKt$Text$1;->$$changed1:I

    move/from16 p1, p20

    iput p1, p0, Landroidx/compose/material3/TextKt$Text$1;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget v1, v0, Landroidx/compose/material3/TextKt$Text$1;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v18

    iget v1, v0, Landroidx/compose/material3/TextKt$Text$1;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v19

    iget v1, v0, Landroidx/compose/material3/TextKt$Text$1;->$$default:I

    iget-object v2, v0, Landroidx/compose/material3/TextKt$Text$1;->$text:Ljava/lang/String;

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/compose/material3/TextKt$Text$1;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v4, v2

    iget-wide v2, v0, Landroidx/compose/material3/TextKt$Text$1;->$color:J

    move-object v6, v4

    iget-wide v4, v0, Landroidx/compose/material3/TextKt$Text$1;->$fontSize:J

    move-object v7, v6

    iget-object v6, v0, Landroidx/compose/material3/TextKt$Text$1;->$fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object v9, v7

    iget-wide v7, v0, Landroidx/compose/material3/TextKt$Text$1;->$letterSpacing:J

    move-object v10, v9

    iget-object v9, v0, Landroidx/compose/material3/TextKt$Text$1;->$textAlign:Landroidx/compose/ui/text/style/TextAlign;

    move-object v12, v10

    iget-wide v10, v0, Landroidx/compose/material3/TextKt$Text$1;->$lineHeight:J

    move-object v13, v12

    iget v12, v0, Landroidx/compose/material3/TextKt$Text$1;->$overflow:I

    move-object v14, v13

    iget-boolean v13, v0, Landroidx/compose/material3/TextKt$Text$1;->$softWrap:Z

    move-object v15, v14

    iget v14, v0, Landroidx/compose/material3/TextKt$Text$1;->$maxLines:I

    move-object/from16 v16, v15

    iget v15, v0, Landroidx/compose/material3/TextKt$Text$1;->$minLines:I

    iget-object v0, v0, Landroidx/compose/material3/TextKt$Text$1;->$style:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v21, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v21

    invoke-static/range {v0 .. v20}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
