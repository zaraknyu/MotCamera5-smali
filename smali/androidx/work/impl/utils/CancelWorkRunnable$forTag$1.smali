.class public final Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $tag:Ljava/lang/String;

.field public final synthetic $workManagerImpl:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$tag:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$tag:Ljava/lang/String;

    iput-object p2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "name"

    iget-object v1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workManagerImpl"

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    const-string/jumbo v2, "workManagerImpl.workDatabase"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/work/impl/utils/CancelWorkRunnable$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Landroidx/work/impl/utils/CancelWorkRunnable$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;I)V

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    invoke-static {v0, v1, p0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    const-string/jumbo v2, "workManagerImpl.workDatabase"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/work/impl/utils/CancelWorkRunnable$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;->$tag:Ljava/lang/String;

    invoke-direct {v2, v1, p0, v0, v3}, Landroidx/work/impl/utils/CancelWorkRunnable$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;I)V

    new-instance p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    iget-object p0, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    invoke-static {p0, v1, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
