.class public final Lcom/motorola/camera/ui/widgets/gl/Vector3F$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;-><init>(Landroid/os/Parcel;I)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;-><init>(Landroid/os/Parcel;I)V

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/UseCase;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    invoke-direct {p0, p1}, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    return-object p0

    :pswitch_7
    const-class p0, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/google/android/material/datepicker/Month;

    const-class p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    new-instance v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateValidatorPointForward;Lcom/google/android/material/datepicker/Month;I)V

    return-object v1

    :pswitch_8
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/motorola/camera/fsm/camera/UseCase;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/material/datepicker/Month;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/material/datepicker/DateValidatorPointForward;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-object p0

    nop

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
