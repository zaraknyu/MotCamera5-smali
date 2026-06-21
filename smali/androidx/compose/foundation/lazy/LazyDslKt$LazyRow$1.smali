.class public final Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Lkotlin/jvm/functions/Function1;

.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic $horizontalArrangement:Ljava/lang/Object;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public final synthetic $r8$classId:I

.field public final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic $userScrollEnabled:Z

.field public final synthetic $verticalAlignment:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    iput p11, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$horizontalArrangement:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$verticalAlignment:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$userScrollEnabled:Z

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$content:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$horizontalArrangement:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$verticalAlignment:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/BiasAlignment$Horizontal;

    const p1, 0xc30001

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v11

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget-object v6, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v7, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$userScrollEnabled:Z

    iget-object v8, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object v9, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$content:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v1 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$horizontalArrangement:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$verticalAlignment:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/BiasAlignment$Vertical;

    const p1, 0xc30001

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v10

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v6, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$userScrollEnabled:Z

    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object v8, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;->$content:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
