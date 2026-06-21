.class public final Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;

.field public static final INSTANCE$1:Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;->INSTANCE$1:Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;

    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;->INSTANCE:Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    new-instance p0, Landroidx/compose/foundation/pager/DefaultPagerState;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance v2, Landroidx/compose/runtime/Pending$keyMap$2;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p1}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/pager/DefaultPagerState;-><init>(IFLkotlin/jvm/functions/Function0;)V

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
