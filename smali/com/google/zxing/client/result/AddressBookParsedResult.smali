.class public final Lcom/google/zxing/client/result/AddressBookParsedResult;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final addressTypes:[Ljava/lang/String;

.field public final addresses:[Ljava/lang/String;

.field public final birthday:Ljava/lang/String;

.field public final emailTypes:[Ljava/lang/String;

.field public final emails:[Ljava/lang/String;

.field public final geo:[Ljava/lang/String;

.field public final instantMessenger:Ljava/lang/String;

.field public final names:[Ljava/lang/String;

.field public final nicknames:[Ljava/lang/String;

.field public final note:Ljava/lang/String;

.field public final org:Ljava/lang/String;

.field public final phoneNumbers:[Ljava/lang/String;

.field public final phoneTypes:[Ljava/lang/String;

.field public final pronunciation:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    array-length v0, p4

    array-length v1, p5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Phone numbers and types lengths differ"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    array-length v0, p6

    array-length v1, p7

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Emails and types lengths differ"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz p10, :cond_5

    if-eqz p11, :cond_5

    array-length v0, p10

    array-length v1, p11

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Addresses and types lengths differ"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    iput-object p8, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    iput-object p11, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    move-object p1, p12

    iput-object p1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    move-object p1, p13

    iput-object p1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisplayResult()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
