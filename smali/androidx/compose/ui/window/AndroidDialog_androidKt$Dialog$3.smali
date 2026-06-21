.class public final Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $content:Lkotlin/Function;

.field public final synthetic $onDismissRequest:Ljava/lang/Object;

.field public final synthetic $properties:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$content:Lkotlin/Function;

    iput-object p2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$onDismissRequest:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$properties:Ljava/lang/Object;

    iput p4, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V
    .locals 0

    .line 2
    iput p5, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$onDismissRequest:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$properties:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$content:Lkotlin/Function;

    iput p4, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$onDismissRequest:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$properties:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$content:Lkotlin/Function;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget p0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, v1, p1, p0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView$1(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$onDismissRequest:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iget-object v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$properties:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$content:Lkotlin/Function;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iget p0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, v1, p1, p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$content:Lkotlin/Function;

    check-cast p2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$$changed:I

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$onDismissRequest:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$properties:Ljava/lang/Object;

    invoke-virtual {p2, v1, p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;I)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$onDismissRequest:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/text/TextLinkScope;

    iget-object v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$properties:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$content:Lkotlin/Function;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget p0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-virtual {p2, v0, v1, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope;->StyleAnnotation([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$onDismissRequest:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$properties:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/window/DialogProperties;

    iget-object v1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$content:Lkotlin/Function;

    check-cast v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget p0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, v1, p1, p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
