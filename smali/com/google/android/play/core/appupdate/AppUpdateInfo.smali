.class public final Lcom/google/android/play/core/appupdate/AppUpdateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zzl:Landroid/app/PendingIntent;

.field public zzp:Z


# direct methods
.method public constructor <init>(IIIJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzp:Z

    iput p1, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzb:I

    iput p2, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzc:I

    iput p3, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzd:I

    iput-object p9, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzl:Landroid/app/PendingIntent;

    return-void
.end method
