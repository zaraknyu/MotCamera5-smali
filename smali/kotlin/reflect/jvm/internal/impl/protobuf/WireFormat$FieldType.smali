.class public enum Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum BOOL:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;

.field public static final enum INT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$3;


# instance fields
.field public final javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field public final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v2, v5, v4, v0, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v0, v7, v8, v5, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->INT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v13, "FIXED64"

    invoke-direct {v12, v13, v6, v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    move-object v13, v7

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v7, v14, v15, v11, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const/4 v15, 0x7

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v6, "BOOL"

    invoke-direct {v14, v6, v15, v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->BOOL:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-object v4, v9

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$1;

    const/16 v6, 0x8

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v3, "STRING"

    invoke-direct {v9, v3, v6, v15, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v15, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v3, v15, v8, v6, v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$3;

    const-string v10, "MESSAGE"

    const/16 v15, 0xa

    move-object/from16 v20, v0

    const/4 v0, 0x2

    invoke-direct {v8, v10, v15, v6, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$3;

    move-object v6, v12

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$4;

    const/16 v10, 0xb

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->BYTE_STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    move-object/from16 v19, v1

    const-string v1, "BYTES"

    invoke-direct {v12, v1, v10, v15, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    move-object v0, v4

    move-object v4, v13

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v1, "UINT32"

    const/16 v10, 0xc

    const/4 v15, 0x0

    invoke-direct {v13, v1, v10, v11, v15}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    move-object v1, v8

    move-object v8, v14

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const/16 v10, 0xd

    move-object/from16 v21, v0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    move-object/from16 v22, v1

    const-string v1, "ENUM"

    invoke-direct {v14, v1, v10, v0, v15}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v0, "SFIXED32"

    const/16 v1, 0xe

    const/4 v10, 0x5

    invoke-direct {v15, v0, v1, v11, v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v1, "SFIXED64"

    const/16 v10, 0xf

    move-object/from16 v17, v2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v10, v5, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v2, "SINT32"

    const/16 v10, 0x10

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-direct {v1, v2, v10, v11, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v10, "SINT64"

    const/16 v11, 0x11

    invoke-direct {v2, v10, v11, v5, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    move-object/from16 v18, v2

    move-object v10, v3

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    move-object/from16 v5, v21

    move-object/from16 v11, v22

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    filled-new-array/range {v1 .. v18}, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public isPackable()Z
    .locals 0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
