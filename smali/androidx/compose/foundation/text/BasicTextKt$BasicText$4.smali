.class public final Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$default:I

.field public final synthetic $color:Landroidx/compose/ui/graphics/ColorProducer;

.field public final synthetic $maxLines:I

.field public final synthetic $minLines:I

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $overflow:I

.field public final synthetic $softWrap:Z

.field public final synthetic $style:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic $text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$text:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$style:Landroidx/compose/ui/text/TextStyle;

    iput p4, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$overflow:I

    iput-boolean p5, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$softWrap:Z

    iput p6, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$maxLines:I

    iput p7, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$minLines:I

    iput-object p8, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$color:Landroidx/compose/ui/graphics/ColorProducer;

    iput p9, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$$changed:I

    iput p10, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$$default:I

    iget-object v0, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$text:Ljava/lang/String;

    iget-object v1, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$style:Landroidx/compose/ui/text/TextStyle;

    iget v3, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$overflow:I

    iget-boolean v4, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$softWrap:Z

    iget v5, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$maxLines:I

    iget v6, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$minLines:I

    iget-object v7, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->$color:Landroidx/compose/ui/graphics/ColorProducer;

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
