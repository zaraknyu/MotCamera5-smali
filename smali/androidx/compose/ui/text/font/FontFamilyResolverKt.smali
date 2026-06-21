.class public abstract Landroidx/compose/ui/text/font/FontFamilyResolverKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GlobalTypefaceRequestCache:Lcom/motorola/camera/CameraKpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/motorola/camera/CameraKpi;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/text/font/FontFamilyResolverKt;->GlobalTypefaceRequestCache:Lcom/motorola/camera/CameraKpi;

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamite/zzf;-><init>(I)V

    return-void
.end method
