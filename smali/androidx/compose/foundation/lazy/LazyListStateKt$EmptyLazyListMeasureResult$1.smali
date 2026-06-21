.class public final Landroidx/compose/foundation/lazy/LazyListStateKt$EmptyLazyListMeasureResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$EmptyLazyListMeasureResult$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final placeChildren$androidx$compose$foundation$lazy$LazyListStateKt$EmptyLazyListMeasureResult$1()V
    .locals 0

    return-void
.end method

.method private final placeChildren$androidx$compose$foundation$lazy$grid$LazyGridStateKt$EmptyLazyGridLayoutInfo$1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAlignmentLines()Ljava/util/Map;
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$EmptyLazyListMeasureResult$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    return-object p0

    :pswitch_0
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$EmptyLazyListMeasureResult$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$EmptyLazyListMeasureResult$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final placeChildren()V
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$EmptyLazyListMeasureResult$1;->$r8$classId:I

    return-void
.end method
