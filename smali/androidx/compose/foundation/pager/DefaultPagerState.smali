.class public final Landroidx/compose/foundation/pager/DefaultPagerState;
.super Landroidx/compose/foundation/pager/PagerState;
.source "SourceFile"


# static fields
.field public static final Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;


# instance fields
.field public final pageCountState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/pager/DefaultPagerState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/pager/DefaultPagerState$Companion$Saver$1;

    sget-object v1, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;->INSTANCE$1:Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/sqlite/db/SimpleSQLiteQuery;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/pager/DefaultPagerState;->Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method

.method public constructor <init>(IFLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Landroidx/compose/foundation/pager/PagerState;-><init>(FI)V

    invoke-static {p3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/pager/DefaultPagerState;->pageCountState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final getPageCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/DefaultPagerState;->pageCountState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
