.class public final Lcom/google/android/gms/common/zad;
.super Lcom/google/android/gms/internal/base/zau;
.source "SourceFile"


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/common/GoogleApiAvailability;

.field public final zab:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/zad;->zaa:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/base/zau;-><init>(ILandroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/zad;->zab:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p0, "Don\'t know how to handle this message: "

    const-string v0, "GoogleApiAvailability"

    invoke-static {p0, p1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    sget p1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    iget-object v1, p0, Lcom/google/android/gms/common/zad;->zaa:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object p0, p0, Lcom/google/android/gms/common/zad;->zab:Landroid/content/Context;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    sget v2, Lcom/google/android/gms/common/GooglePlayServicesUtil;->$r8$clinit:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const-string v0, "n"

    invoke-virtual {v1, p0, v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->zae(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return-void
.end method
