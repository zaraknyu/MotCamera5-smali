.class public final Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public L$0:Landroid/content/Context;

.field public L$1:Ljava/io/File;

.field public L$2:Ljava/io/File;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeFileManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->label:I

    iget-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->saveScan(Landroid/content/Context;Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
