.class public final Landroidx/compose/foundation/CanvasKt$Canvas$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $modifier:Ljava/lang/Object;

.field public final synthetic $onDraw:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$r8$classId:I

    iput-object p3, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$modifier:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$onDraw:Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$modifier:Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$$changed:I

    iput-object p3, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$onDraw:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$$changed:I

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$onDraw:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(ILandroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/ProvidedValue;

    iget-object v0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$onDraw:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget p0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, p1, p0}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$modifier:Ljava/lang/Object;

    check-cast p2, [Landroidx/compose/runtime/ProvidedValue;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/compose/runtime/ProvidedValue;

    iget-object v0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$onDraw:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget p0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, p1, p0}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$onDraw:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget p0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, p1, p0}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->InlineChildren(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iget v0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$$changed:I

    iget-object p0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$onDraw:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->Item(ILandroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/animation/core/Transition;

    iget v0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$$changed:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$onDraw:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, p0}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core_release(ILandroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$onDraw:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget p0, p0, Landroidx/compose/foundation/CanvasKt$Canvas$1;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, p1, p0}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
