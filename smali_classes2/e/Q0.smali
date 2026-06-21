.class public final Le/Q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lc/X;

.field public final synthetic b:Le/J0;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Le/Q;

.field public final synthetic e:Le/H0;


# direct methods
.method public constructor <init>(Lc/X;Le/J0;Landroidx/compose/runtime/MutableState;Le/Q;Le/H0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/Q0;->a:Lc/X;

    iput-object p2, p0, Le/Q0;->b:Le/J0;

    iput-object p3, p0, Le/Q0;->c:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Le/Q0;->d:Le/Q;

    iput-object p5, p0, Le/Q0;->e:Le/H0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    check-cast v3, Le/z1;

    move-object/from16 v9, p2

    check-cast v9, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "$this$ZoomablePagerContent"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x6

    const/4 v4, 0x4

    if-nez v2, :cond_2

    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_0

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    or-int/2addr v1, v2

    :cond_2
    and-int/lit8 v2, v1, 0x13

    const/16 v5, 0x12

    if-ne v2, v5, :cond_4

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_4
    :goto_2
    iget-object v10, v0, Le/Q0;->a:Lc/X;

    iget-object v2, v10, Lc/X;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v11, 0x0

    invoke-static {v10, v2, v9, v11}, Le/m0;->a(Ljava/lang/Object;ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Animatable;

    move-result-object v2

    iget-object v12, v0, Le/Q0;->b:Le/J0;

    iget-object v5, v12, Le/J0;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v13

    iget-object v5, v12, Le/J0;->q:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/high16 v6, 0x42f00000    # 120.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v14, v5, v6

    iget-object v15, v2, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    const v2, -0xb935245

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v0, Le/Q0;->c:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v5, :cond_5

    if-ne v6, v7, :cond_6

    :cond_5
    new-instance v6, Le/Q0$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v6, v2, v5}, Le/Q0$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v16, v6

    check-cast v16, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, -0xb93486b

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v2, v1, 0xe

    if-eq v2, v4, :cond_8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v11

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_9

    if-ne v2, v7, :cond_a

    :cond_9
    new-instance v1, Le/P0;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x2

    const-class v4, Le/z1;

    const-string v5, "onSizeAvailable"

    const-string v6, "onSizeAvailable-iLBOSCw(JJ)V"

    invoke-direct/range {v1 .. v8}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_a
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iget-object v1, v12, Le/J0;->A:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v1}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v12, Le/J0;->r:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v12, Le/J0;->t:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v5, v0, Le/Q0;->e:Le/H0;

    iget-object v5, v5, Le/H0;->j:Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    const/4 v9, 0x0

    iget-object v11, v0, Le/Q0;->d:Le/Q;

    move v12, v1

    move v6, v14

    move-object v7, v15

    move-object v14, v4

    move-object v15, v5

    move-object v4, v10

    move v5, v13

    move-object v10, v2

    move v13, v3

    invoke-static/range {v4 .. v18}, Le/m0;->a(Lc/X;FFLandroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function2;Le/Q;ZZLandroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
