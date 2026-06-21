.class public final Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $factory:Ljava/lang/Object;

.field public final synthetic $modifier:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $update:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    const/4 p4, 0x2

    iput p4, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$modifier:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$factory:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$update:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/AndroidUriHandler;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    const/4 p4, 0x4

    iput p4, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$factory:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$update:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$modifier:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$factory:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$update:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$modifier:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    const/4 p4, 0x0

    iput p4, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$r8$classId:I

    .line 4
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$factory:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$modifier:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$update:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$factory:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/node/Owner;

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$update:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AndroidUriHandler;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$modifier:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v1

    invoke-static {p2, v0, p0, p1, v1}, Landroidx/compose/ui/platform/CompositionLocalsKt;->ProvideCommonCompositionLocals(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/AndroidUriHandler;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$factory:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$update:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AndroidUriHandler;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$modifier:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v0, p0, p1, v2}, Landroidx/compose/ui/platform/CompositionLocalsKt;->ProvideCommonCompositionLocals(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/AndroidUriHandler;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$factory:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/BiasAlignment;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$update:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v1, 0xc07

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v1

    invoke-static {p2, v0, p0, p1, v1}, Landroidx/compose/foundation/layout/OffsetKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$factory:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$update:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$modifier:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v1

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result p0

    iget p1, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-float/2addr p1, p0

    iput p1, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$factory:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$modifier:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;->$update:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    const/16 v1, 0x31

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v1

    invoke-static {p2, v0, p0, p1, v1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

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
