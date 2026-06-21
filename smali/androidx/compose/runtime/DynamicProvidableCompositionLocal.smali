.class public final Landroidx/compose/runtime/DynamicProvidableCompositionLocal;
.super Landroidx/compose/runtime/ProvidableCompositionLocal;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final policy:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->$r8$classId:I

    sget-object v0, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 2
    iput-object v0, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->policy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->$r8$classId:I

    .line 3
    sget-object v0, Landroidx/compose/runtime/ComputedProvidableCompositionLocal$1;->INSTANCE:Landroidx/compose/runtime/ComputedProvidableCompositionLocal$1;

    .line 4
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 5
    new-instance v0, Landroidx/compose/runtime/ComputedValueHolder;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComputedValueHolder;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->policy:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;
    .locals 8

    iget v0, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Landroidx/compose/runtime/ProvidedValue;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/ProvidedValue;-><init>(Landroidx/compose/runtime/ProvidableCompositionLocal;Ljava/lang/Object;ZLandroidx/compose/runtime/SnapshotMutationPolicy;Z)V

    return-object v1

    :pswitch_0
    move-object v2, p0

    move-object v3, p1

    new-instance p0, Landroidx/compose/runtime/ProvidedValue;

    if-nez v3, :cond_1

    const/4 p1, 0x1

    :goto_2
    move v5, p1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :goto_3
    iget-object p1, v2, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->policy:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/SnapshotMutationPolicy;

    const/4 v7, 0x1

    move-object v4, v3

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/ProvidedValue;-><init>(Landroidx/compose/runtime/ProvidableCompositionLocal;Ljava/lang/Object;ZLandroidx/compose/runtime/SnapshotMutationPolicy;Z)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDefaultValueHolder$runtime_release()Landroidx/compose/runtime/ValueHolder;
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->getDefaultValueHolder$runtime_release()Landroidx/compose/runtime/ValueHolder;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->policy:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ComputedValueHolder;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
