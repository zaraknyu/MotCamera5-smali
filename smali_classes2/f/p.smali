.class public final Lf/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lf/u;

.field public final synthetic b:Lf/v;

.field public final synthetic c:Lf/C;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/runtime/State;

.field public final synthetic f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic g:Landroidx/compose/runtime/State;

.field public final synthetic h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public constructor <init>(Lf/u;Lf/v;Lf/C;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/State;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/State;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/p;->a:Lf/u;

    iput-object p2, p0, Lf/p;->b:Lf/v;

    iput-object p3, p0, Lf/p;->c:Lf/C;

    iput-object p4, p0, Lf/p;->d:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lf/p;->e:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lf/p;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p7, p0, Lf/p;->g:Landroidx/compose/runtime/State;

    iput-object p8, p0, Lf/p;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v2, v2, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_3
    :goto_1
    iget-object v5, v0, Lf/p;->c:Lf/C;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    iget-object v3, v0, Lf/p;->b:Lf/v;

    iget-object v4, v0, Lf/p;->a:Lf/u;

    const/4 v13, 0x0

    if-eqz v1, :cond_6

    const v1, 0x368b8a98

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v1, v4, Lf/u;->c:Landroidx/compose/foundation/pager/PagerState;

    iget-object v3, v3, Lf/v;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    const v3, -0x50d21eb6

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4

    if-ne v4, v2, :cond_5

    :cond_4
    new-instance v3, Lf/B;

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v4, 0x1

    const-class v6, Lf/C;

    const-string v7, "getImageItemKey"

    const-string v8, "getImageItemKey(I)I"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lf/B;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v3

    :cond_5
    check-cast v4, Lkotlin/reflect/KFunction;

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v15, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    move-object/from16 v17, v4

    check-cast v17, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lf/m;

    iget-object v3, v0, Lf/p;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v4, 0x0

    iget-object v0, v0, Lf/p;->e:Landroidx/compose/runtime/State;

    invoke-direct {v2, v0, v3, v4}, Lf/m;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    const v0, 0x3822a75e

    invoke-static {v0, v2, v12}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v4, 0x30

    const/16 v5, 0x3afc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v1

    move v1, v13

    move-object v13, v0

    invoke-static/range {v2 .. v18}, Landroidx/compose/foundation/pager/PagerKt;->HorizontalPager--8jOkeI(FIIILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Z)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_6
    move v1, v13

    const v6, 0x369543eb

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v13, v4, Lf/u;->b:Landroidx/compose/foundation/pager/PagerState;

    iget-object v3, v3, Lf/v;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    const v3, -0x50d1ced7

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_7

    if-ne v4, v2, :cond_8

    :cond_7
    new-instance v3, Lf/B;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v4, 0x1

    const-class v6, Lf/C;

    const-string v7, "getPageItemKey"

    const-string v8, "getPageItemKey(I)I"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lf/B;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v3

    :cond_8
    check-cast v4, Lkotlin/reflect/KFunction;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    iget-object v3, v0, Lf/p;->d:Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    move-object/from16 v17, v4

    check-cast v17, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lf/m;

    iget-object v3, v0, Lf/p;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v4, 0x1

    iget-object v0, v0, Lf/p;->g:Landroidx/compose/runtime/State;

    invoke-direct {v2, v0, v3, v4}, Lf/m;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    const v0, -0x2b06dc4b

    invoke-static {v0, v2, v12}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v4, 0x0

    const/16 v5, 0x3afc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v13

    move-object v13, v0

    invoke-static/range {v2 .. v18}, Landroidx/compose/foundation/pager/PagerKt;->HorizontalPager--8jOkeI(FIIILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Z)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
