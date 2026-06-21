.class public final Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public L$0:Landroidx/work/impl/WorkDatabase_Impl;

.field public L$1:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p1, p0}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/work/impl/WorkDatabase_Impl;ZLandroidx/room/RoomDatabase$$ExternalSyntheticLambda0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
