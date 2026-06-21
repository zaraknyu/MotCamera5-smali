.class public final Landroidx/media3/common/DrmInitData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/common/DrmInitData$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/media3/common/DrmInitData$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {p0, p1}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_0
    new-instance p0, Landroidx/media3/common/DrmInitData;

    invoke-direct {p0, p1}, Landroidx/media3/common/DrmInitData;-><init>(Landroid/os/Parcel;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/media3/common/DrmInitData$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Landroidx/media3/common/DrmInitData$SchemeData;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Landroidx/media3/common/DrmInitData;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
