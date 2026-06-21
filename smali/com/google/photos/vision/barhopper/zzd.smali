.class public final Lcom/google/photos/vision/barhopper/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;


# static fields
.field public static final zza:Lcom/google/photos/vision/barhopper/zzd;

.field public static final zza$1:Lcom/google/photos/vision/barhopper/zzd;

.field public static final zza$2:Lcom/google/photos/vision/barhopper/zzd;

.field public static final zza$3:Lcom/google/photos/vision/barhopper/zzd;

.field public static final zza$4:Lcom/google/photos/vision/barhopper/zzd;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/photos/vision/barhopper/zzd;-><init>(I)V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzd;->zza$1:Lcom/google/photos/vision/barhopper/zzd;

    new-instance v0, Lcom/google/photos/vision/barhopper/zzd;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/photos/vision/barhopper/zzd;-><init>(I)V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzd;->zza$2:Lcom/google/photos/vision/barhopper/zzd;

    new-instance v0, Lcom/google/photos/vision/barhopper/zzd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/photos/vision/barhopper/zzd;-><init>(I)V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzd;->zza:Lcom/google/photos/vision/barhopper/zzd;

    new-instance v0, Lcom/google/photos/vision/barhopper/zzd;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/photos/vision/barhopper/zzd;-><init>(I)V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzd;->zza$3:Lcom/google/photos/vision/barhopper/zzd;

    new-instance v0, Lcom/google/photos/vision/barhopper/zzd;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/photos/vision/barhopper/zzd;-><init>(I)V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzd;->zza$4:Lcom/google/photos/vision/barhopper/zzd;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/photos/vision/barhopper/zzd;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 1

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzd;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/google/photos/vision/barhopper/zzg;->zza(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_1
    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 p0, 0x0

    :cond_2
    return p0

    :pswitch_2
    const/4 p0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 p0, 0x0

    :cond_3
    return p0

    :pswitch_3
    invoke-static {p1}, Lcom/google/photos/vision/barhopper/zze;->zza(I)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
