.class public final Le/R0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Le/J0;

.field public final synthetic c:Lf/C;

.field public final synthetic d:Le/H0;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Le/J0;Lf/C;Le/H0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/R0;->a:Ljava/util/List;

    iput-object p2, p0, Le/R0;->b:Le/J0;

    iput-object p3, p0, Le/R0;->c:Lf/C;

    iput-object p4, p0, Le/R0;->d:Le/H0;

    iput-object p5, p0, Le/R0;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v5, p3

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "$this$DocumentPager"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

    const/16 v6, 0x20

    if-nez v3, :cond_3

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v4, v3

    :cond_3
    move v11, v4

    and-int/lit16 v3, v11, 0x93

    const/16 v4, 0x92

    if-ne v3, v4, :cond_5

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_5
    :goto_3
    iget-object v3, v0, Le/R0;->a:Ljava/util/List;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lc/X;

    if-nez v13, :cond_6

    goto/16 :goto_5

    :cond_6
    const v4, 0x7768d7f5

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v4, :cond_7

    if-ne v7, v8, :cond_8

    :cond_7
    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, v0, Le/R0;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Le/Q;

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v7, Le/Q;

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v7, v2}, Le/Q;->a(I)V

    const v9, 0x7768f048

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_9

    if-ne v12, v8, :cond_a

    :cond_9
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const v12, 0x7768fa85

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v12, v11, 0x70

    if-ne v12, v6, :cond_b

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    move v6, v4

    :goto_4
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v9

    or-int/2addr v6, v9

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_c

    if-ne v9, v8, :cond_d

    :cond_c
    new-instance v9, Le/n0;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v9, v2, v6}, Le/n0;-><init>(II)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    check-cast v9, Le/n0;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v14, v0, Le/R0;->b:Le/J0;

    iget-object v6, v14, Le/J0;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/D;

    iget v6, v6, Lf/D;->a:I

    const v12, 0x77692989

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    iget-object v10, v0, Le/R0;->c:Lf/C;

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    or-int v12, v12, v16

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v12, :cond_e

    if-ne v4, v8, :cond_f

    :cond_e
    new-instance v4, Le/J$$ExternalSyntheticLambda1;

    const/4 v8, 0x1

    invoke-direct {v4, v8, v3, v10}, Le/J$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v3, Le/o1;

    invoke-direct {v3, v4}, Le/o1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v12, Le/Q0;

    iget-object v4, v0, Le/R0;->d:Le/H0;

    move-object/from16 v17, v4

    move-object/from16 v16, v7

    invoke-direct/range {v12 .. v17}, Le/Q0;-><init>(Lc/X;Le/J0;Landroidx/compose/runtime/MutableState;Le/Q;Le/H0;)V

    const v4, 0x76f33cd1

    invoke-static {v4, v12, v5}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    move v4, v6

    const/4 v6, 0x0

    move-object v8, v5

    move-object v5, v3

    move-object v3, v9

    const/16 v9, 0x6000

    invoke-static/range {v3 .. v9}, Le/W;->a(Le/n0;ILe/o1;Le/n1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v0, Le/R0;->d:Le/H0;

    iget-object v4, v0, Le/H0;->k:Le/X;

    and-int/lit8 v0, v11, 0xe

    shl-int/lit8 v5, v11, 0x3

    and-int/lit16 v5, v5, 0x380

    or-int v6, v0, v5

    const/4 v7, 0x4

    move-object v0, v1

    move v1, v3

    const/4 v3, 0x0

    move-object v5, v8

    invoke-static/range {v0 .. v7}, Le/W;->a(Landroidx/compose/foundation/layout/BoxScope;ZIILe/X;Landroidx/compose/runtime/ComposerImpl;II)V

    sget-object v0, Lc/Z;->a:Lc/Z;

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v2, 0x4

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v2, 0xc30

    invoke-virtual {v0, v13, v1, v8, v2}, Lc/Z;->a(Lc/X;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
