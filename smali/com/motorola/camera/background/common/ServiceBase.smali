.class public abstract Lcom/motorola/camera/background/common/ServiceBase;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mAllowRebind:Z

.field public mBinding:Landroid/os/Binder;

.field public mStartMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-class v0, Lcom/motorola/camera/background/common/ServiceBase;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    iget p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    return p0
.end method
