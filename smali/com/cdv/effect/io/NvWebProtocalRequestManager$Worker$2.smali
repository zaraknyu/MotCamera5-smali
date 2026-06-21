.class Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;->ProcessRequest(Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;

.field final synthetic val$allHeaders:Ljava/lang/String;

.field final synthetic val$req:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;


# direct methods
.method public constructor <init>(Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$2;->this$1:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;

    iput-object p2, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$2;->val$req:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;

    iput-object p3, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$2;->val$allHeaders:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$2;->this$1:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;

    iget-object v1, v0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvWebProtocalRequestManager;

    invoke-static {v1}, Lcom/cdv/effect/io/NvWebProtocalRequestManager;->access$300(Lcom/cdv/effect/io/NvWebProtocalRequestManager;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$2;->val$req:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;

    iget-wide v4, v0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;->m_id:J

    iget v6, v0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;->m_responseCode:I

    iget-object v7, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$2;->val$allHeaders:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/cdv/effect/io/NvWebProtocalRequestManager;->access$600(Lcom/cdv/effect/io/NvWebProtocalRequestManager;JJILjava/lang/String;)V

    return-void
.end method
