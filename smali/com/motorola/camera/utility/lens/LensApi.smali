.class public final Lcom/motorola/camera/utility/lens/LensApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GOOGLE_LENS_DATA:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/utility/lens/LensApi;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApi;->TAG:Ljava/lang/String;

    const-string v0, "google://lens"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApi;->GOOGLE_LENS_DATA:Landroid/net/Uri;

    return-void
.end method
