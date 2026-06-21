.class public final Lcom/adobe/magic_clean/SmartEraserAndroidShim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/magic_clean/SmartEraserAndroidShim$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0019\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0082 \u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/adobe/magic_clean/SmartEraserAndroidShim;",
        "",
        "<init>",
        "()V",
        "Initialize",
        "Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;",
        "eraserInput",
        "Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;",
        "eraserOutput",
        "Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;",
        "initializeSmartEraser",
        "Companion",
        "magic_clean_sdkRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/adobe/magic_clean/SmartEraserAndroidShim$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/adobe/magic_clean/SmartEraserAndroidShim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/magic_clean/SmartEraserAndroidShim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/adobe/magic_clean/SmartEraserAndroidShim;->Companion:Lcom/adobe/magic_clean/SmartEraserAndroidShim$Companion;

    const-string v0, "MagicClean"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native initializeSmartEraser(Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
.end method


# virtual methods
.method public final Initialize(Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 0

    const-string p0, "eraserInput"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eraserOutput"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultUnknownFailure:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    iput-object p0, p2, Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
