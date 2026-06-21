.class public final Lcom/google/android/play/core/appupdate/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Lcom/motorola/camera/PermissionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/PermissionCallback;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/play/core/appupdate/zzd;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/motorola/camera/PermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzd;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/motorola/camera/PermissionCallback;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzi;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzi;->zza:Landroid/content/Context;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzt;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/zzt;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzi;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzi;->zza:Landroid/content/Context;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/zzc;-><init>(Landroid/content/Context;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
