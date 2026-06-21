.class public final Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion$CREATOR$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion$CREATOR$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;-><init>(J)V

    return-object p0

    :pswitch_0
    new-instance p0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    return-object p0

    :pswitch_1
    new-instance p0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion$CREATOR$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
