.class public final enum Landroid/renderscript/Element$DataType;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Element$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Element$DataType;

.field public static final enum BOOLEAN:Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_32:Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_64:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_2X2:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_3X3:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_4X4:Landroid/renderscript/Element$DataType;

.field public static final enum RS_ALLOCATION:Landroid/renderscript/Element$DataType;

.field public static final enum RS_ELEMENT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_MESH:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

.field public static final enum RS_SAMPLER:Landroid/renderscript/Element$DataType;

.field public static final enum RS_SCRIPT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_TYPE:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_64:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_8:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_64:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_8:Landroid/renderscript/Element$DataType;


# instance fields
.field mID:I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x4

    .line 85
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "FLOAT_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v6, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    .line 86
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "FLOAT_64"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    .line 87
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "SIGNED_8"

    invoke-direct {v0, v1, v6, v5, v8}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    .line 88
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "SIGNED_16"

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    .line 89
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "SIGNED_32"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    .line 90
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "SIGNED_64"

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    .line 91
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_8"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v7, v8}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    .line 92
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_16"

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    .line 93
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_32"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    .line 94
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_64"

    const/16 v2, 0x9

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    .line 96
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "BOOLEAN"

    const/16 v2, 0xa

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    .line 98
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_5_6_5"

    const/16 v2, 0xb

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    .line 99
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_5_5_5_1"

    const/16 v2, 0xc

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    .line 100
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_4_4_4_4"

    const/16 v2, 0xd

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    .line 102
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "MATRIX_4X4"

    const/16 v2, 0xe

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v9, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    .line 103
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "MATRIX_3X3"

    const/16 v2, 0xf

    const/16 v3, 0x11

    const/16 v4, 0x24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    .line 104
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "MATRIX_2X2"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v9, v2, v9}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    .line 106
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_ELEMENT"

    const/16 v2, 0x11

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    .line 107
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_TYPE"

    const/16 v2, 0x12

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    .line 108
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_ALLOCATION"

    const/16 v2, 0x13

    const/16 v3, 0x3ea

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    .line 109
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_SAMPLER"

    const/16 v2, 0x14

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    .line 110
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_SCRIPT"

    const/16 v2, 0x15

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    .line 111
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_MESH"

    const/16 v2, 0x16

    const/16 v3, 0x3ed

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    .line 112
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_PROGRAM_FRAGMENT"

    const/16 v2, 0x17

    const/16 v3, 0x3ee

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    .line 113
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_PROGRAM_VERTEX"

    const/16 v2, 0x18

    const/16 v3, 0x3ef

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    .line 114
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_PROGRAM_RASTER"

    const/16 v2, 0x19

    const/16 v3, 0x3f0

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    .line 115
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "RS_PROGRAM_STORE"

    const/16 v2, 0x1a

    const/16 v3, 0x3f1

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    .line 83
    const/16 v0, 0x1b

    new-array v0, v0, [Landroid/renderscript/Element$DataType;

    const/4 v1, 0x0

    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    aput-object v1, v0, v8

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    aput-object v1, v0, v5

    const/4 v1, 0x5

    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    aput-object v1, v0, v9

    const/16 v1, 0x11

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Landroid/renderscript/Element$DataType;->mID:I

    .line 121
    iput p4, p0, Landroid/renderscript/Element$DataType;->mSize:I

    .line 122
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataType;
    .locals 1
    .parameter "name"

    .prologue
    .line 83
    const-class v0, Landroid/renderscript/Element$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Element$DataType;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/Element$DataType;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    invoke-virtual {v0}, [Landroid/renderscript/Element$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Element$DataType;

    return-object v0
.end method
