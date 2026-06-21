.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$startActivity$1;
.super Lcom/motorola/camera/utility/ColorUtil;
.source "SourceFile"


# instance fields
.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$startActivity$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$startActivity$1;->$intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onDismissSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$startActivity$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$startActivity$1;->$intent:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->access$startActivity$s1027565324(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroid/content/Intent;)V

    return-void
.end method
