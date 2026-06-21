.class public final Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 0

    iput p4, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;->$r8$classId:I

    const/4 p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/room/SharedSQLiteStatement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final toByteArray(Ljava/lang/Object;)[B
    .locals 0

    iget p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/util/List;

    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_8
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
